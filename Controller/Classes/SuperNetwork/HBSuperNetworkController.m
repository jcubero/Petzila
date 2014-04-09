//
//  HBSuperNetworkController.m
//  Pods
//
//  Created by Vincil Bishop on 3/25/14.
//
//

#import "HBSuperNetworkController.h"
#import "HBSuperNetwork+ControllerAdditions.h"
#import "HBNetworkController.h"
#import "HBNetwork+ControllerAdditions.h"

@implementation HBSuperNetworkController

static HBSuperNetworkController *_sharedController;

+ (HBSuperNetworkController*) sharedController
{
    if(!_sharedController)
    {
        _sharedController = [HBSuperNetworkController new];
    }
    
    return _sharedController;
}

- (id) init
{
    self = [super init];
    
    if (self) {
        
        // Pass current location coordinates to get nearest supernetworks...
        /*
         [[MYMeteorClient sharedClient] addSubscription:@"nearby_supernetwork"
         withParameters:@[[[MYLocationManager sharedManager].lastLocation latitudeNumber],[[MYLocationManager sharedManager].lastLocation longitudeNumber]]];
         */
        
        id LogonObserver = nil;
        LogonObserver = [[NSNotificationCenter defaultCenter] addObserverForName:kMyMeteor_LogonSuccess_Notification object:LogonObserver queue:[NSOperationQueue new] usingBlock:^(NSNotification *note) {
            
            [self rangeSuperNetworks];
            
        }];
    }
    
    return self;
}

- (NSArray<HBSuperNetwork>*) superNetworks
{
    // TODO: Add notification subscription to cache the deserialization of model objects.
    NSArray<HBSuperNetwork> *superNetworks = [[HBSuperNetwork parser] parseArray:[MYMeteorClient sharedClient].collections[kHBSuperNetwork]];
    
    return superNetworks;
}

- (void) rangeSuperNetworks
{
    // TODO: It could be necessary in the future to implement logic to iterate through super networks...
    
    // Call a method to retrieve nearby supernetworks.
    [[MYMeteorClient sharedClient] callMethodName:@"getClosestSuperNetwork" parameters:@[[[MYLocationManager sharedManager].lastLocation latitudeNumber],[[MYLocationManager sharedManager].lastLocation longitudeNumber]] responseCallback:^(NSDictionary *response, NSError *error) {
        
        // TODO: Add some conditional logic here in case we are on a simulator...
        
        if ([response result]) {
            
            HBSuperNetwork *superNetwork = [[HBSuperNetwork parser] parseDictionary:[response result]];
            self.currentSuperNetwork = superNetwork;
            
#if TARGET_IPHONE_SIMULATOR
            [[MYMeteorClient sharedClient] callMethodName:@"getNetworkDetails" parameters:@[superNetwork.proximityUUID,@"0"] responseCallback:^(NSDictionary *response, NSError *error) {
                
                HBNetwork *network = [[HBNetwork parser] parseDictionary:[response result]];
                
                [[HBNetworkController sharedController] joinNetwork:network];
                
            }];
#else
            [[MYLocationManager sharedManager] getBeaconsAndStopInRegion:superNetwork.beaconRegion completion:^(id sender, BOOL success, NSError *error, NSArray *beacons) {
                
                // We should really only ever be able to see one superNetwork at a time.
                DDLogVerbose(@"beacons: %@",beacons);
                
                // TODO: implement some logic to clear supernetwork subscriptions
                if (beacons.count > 0) {
                    
                    // We are making the assumption here that you will only ever be able to see 1 super network at a time...
                    
                    CLBeacon *beacon = beacons[0];
                    
                    [[MYMeteorClient sharedClient] callMethodName:@"getNetworkDetails" parameters:@[[[beacon network] proximityUUID],[[beacon network] majorId]] responseCallback:^(NSDictionary *response, NSError *error) {
                        
                        HBNetwork *network = [[HBNetwork parser] parseDictionary:[response result]];
                        
                        [[HBNetworkController sharedController] joinNetwork:network];
                        
                    }];
                    
                } else {
                    
                    [[HBNetworkController sharedController] createAndJoinNextNetworkInSuperNetwork:superNetwork];
                }
            }];
#endif
        }
    }];
}

@end
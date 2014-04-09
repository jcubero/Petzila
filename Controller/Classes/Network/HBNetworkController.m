//
//  HBNetworkController.m
//  Pods
//
//  Created by Vincil Bishop on 3/25/14.
//
//

#import "HBNetworkController.h"
#import "CLBeacon+HBNetworkAdditions.h"
#import "CLBeaconRegion+HBNetworkAdditions.h"

@implementation HBNetworkController

static HBNetworkController *_sharedController;

+ (HBNetworkController*) sharedController
{
    if(!_sharedController)
    {
        _sharedController = [HBNetworkController new];
    }
    
    return _sharedController;
}

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}

#pragma mark - Ranging -

- (void) joinNetwork:(HBNetwork*)network
{
    [[MYPeripheralManager sharedManager] startAdvertisingWithRegion:[network beaconRegion] completion:NULL];
    
    self.currentNetwork = network;
    
    [[MYMeteorClient sharedClient] callMethodName:@"joinNetwork" parameters:@[self.currentNetwork._id,[[MYMeteorClient sharedClient] userId]] responseCallback:^(NSDictionary *response, NSError *error) {
        
        [[NSNotificationCenter defaultCenter] postNotificationName:kHBNetworkController_NetworkJoined_Notification object:self];
        
    }];
}

- (void) unJoinCurrentNetwork
{
    [[MYMeteorClient sharedClient] callMethodName:@"unJoinNetwork" parameters:@[self.currentNetwork._id,[[MYMeteorClient sharedClient] userId]] responseCallback:^(NSDictionary *response, NSError *error) {
        
        self.currentNetwork = nil;
        [[NSNotificationCenter defaultCenter] postNotificationName:kHBNetworkController_NetworkUnJoined_Notification object:self];
        
    }];
}

- (void) createAndJoinNextNetworkInSuperNetwork:(HBSuperNetwork*)superNetwork
{
    NSArray *parameters = @[superNetwork._id,
                            [[MYLocationManager sharedManager].lastLocation latitudeNumber],
                            [[MYLocationManager sharedManager].lastLocation longitudeNumber]];
    
    // If we didn't range any beacons, let's create our own network
    [[MYMeteorClient sharedClient] callMethodName:@"createNextNetwork" parameters:parameters responseCallback:^(NSDictionary *response, NSError *error) {
        
        if (!error && [response result]) {
            // response should be a dictionary representation of the newly created network
            HBNetwork *network = [[HBNetwork parser] parseDictionary:[response result]];
            
            [self joinNetwork:network];
        }
    }];
}

@end
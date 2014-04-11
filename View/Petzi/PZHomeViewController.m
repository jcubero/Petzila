//
//  PZHomeViewController.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/9/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZHomeViewController.h"
#import "PZLoginViewController.h"


@interface PZHomeViewController ()

@end

@implementation PZHomeViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Custom initialization
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNetworkJoined:) name:@"" object:nil];

    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([[MYMeteorClient sharedClient] userId]) {
        
        /*
        [[NSOperationQueue mainQueue] addOperationWitPZlock:^{
            DDLogVerbose(@"superNetworks: %@",[PZSuperNetworkController sharedController].superNetworks);
            [[PZSuperNetworkController sharedController] rangeSuperNetworks];
        } afterDelay:3];
         */

    } else {
        PZLoginViewController *controller = [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"PZLoginViewController"];
        [self presentViewController:controller animated:YES completion:NULL];

    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //[self setupStandardDrawers];
}


- (void) handleNetworkJoined:(NSNotification*)notification
{
//    [[NSOperationQueue mainQueue] addOperationWitPZlock:^{
//        self.nameLabel.hidden = NO;
//        self.networkIdentifierLabel.hidden = NO;
//        
//        self.nameLabel.text = [PZNetworkController sharedController].currentNetwork.displayName;
//        self.networkIdentifierLabel.text = [PZNetworkController sharedController].currentNetwork.networkIdentifier;
//    }];
}

- (void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


/*
- (IBAction)callPressed:(id)sender {

    [[MYMeteorClient sharedClient] callMethodName:@"twilio_GetCapabilityToken" parameters:@[[[MYMeteorClient sharedClient] userId]] responseCallback:^(NSDictionary *response, NSError *error) {
        
        DDLogVerbose(@"capabilityToken:%@",[response result]);
        
        [MYTwilioClient setCapabilityToken:[response result]];
        
        NSDictionary *parameters = nil;
        if ([[[MYMeteorClient sharedClient] userId] isEqualToString:@"duLKgbSTZBsn94mzj"]) {
            parameters = @{@"To":@"w8nsSZjsBWb36aDqr",@"From":@"duLKgbSTZBsn94mzj"};
            //parameters = @{@"To":@"w8nsSZjsBWb36aDqr",@"From":@"duLKgbSTZBsn94mzj"};
            
            [[MYTwilioClient sharedClient] connectWithParameters:parameters];
            
        } else {
            [[MYTwilioClient sharedClient].device listen];
            
            id observer;
            observer = [[NSNotificationCenter defaultCenter] addObserverForName:MYTwilioClient_deviceDidReceiveIncomingConnection object:observer queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
               
                [UIAlertView showWithTitle:@"Incoming Call" message:@"Answer?" cancelButtonTitle:@"No" otherButtonTitles:@[@"Yes"] tapBlock:^(UIAlertView *alertView, NSInteger buttonIndex) {
                    
                    if (buttonIndex != [alertView cancelButtonIndex]) {
                        [[MYTwilioClient sharedClient] acceptConnection:note.object];
                    }
                    
                }];
                
            }];
        }
        
        
    }];
}
 */



- (void) handleIncomingCall:(NSNotification*)notification
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

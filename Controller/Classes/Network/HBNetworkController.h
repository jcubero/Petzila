//
//  HBNetworkController.h
//  Pods
//
//  Created by Vincil Bishop on 3/25/14.
//
//

#import <Foundation/Foundation.h>

#define kHBNetworkController_NetworkJoined_Notification @"kHBNetworkController_NetworkJoined_Notification"

#define kHBNetworkController_NetworkUnJoined_Notification @"kHBNetworkController_NetworkUnJoined_Notification"

@interface HBNetworkController : NSObject

@property (nonatomic,strong) HBNetwork *currentNetwork;

+ (HBNetworkController*) sharedController;

- (void) joinNetwork:(HBNetwork*)network;
- (void) unJoinCurrentNetwork;
- (void) createAndJoinNextNetworkInSuperNetwork:(HBSuperNetwork*)superNetwork;

@end
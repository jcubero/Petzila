//
//  HBSuperNetworkController.h
//  Pods
//
//  Created by Vincil Bishop on 3/25/14.
//
//

#import <Foundation/Foundation.h>

@interface HBSuperNetworkController : NSObject

@property (nonatomic,strong) HBSuperNetwork *currentSuperNetwork;

+ (HBSuperNetworkController*) sharedController;

- (NSArray<HBSuperNetwork>*) superNetworks;

- (void) rangeSuperNetworks;

@end

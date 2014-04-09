//
//  CLBeacon+HBNetworkAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 4/5/14.
//
//

#import "CLBeacon+HBNetworkAdditions.h"

@implementation CLBeacon (HBNetworkAdditions)

- (HBNetwork*) network
{
    HBNetwork *network = [HBNetwork new];
    
    network.proximityUUID = [self.proximityUUID UUIDString];
    network.majorId = [self.major stringValue];
    
    return network;
}

@end

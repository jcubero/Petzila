//
//  HBSuperNetwork+ControllerAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 3/27/14.
//
//

#import "HBSuperNetwork+ControllerAdditions.h"

@implementation HBSuperNetwork (ControllerAdditions)

- (CLBeaconRegion*) beaconRegion
{
    CLBeaconRegion *beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:[[NSUUID alloc] initWithUUIDString:self.proximityUUID] identifier:self.proximityUUID];
    return beaconRegion;
}

@end

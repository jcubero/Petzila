//
//  HBNetwork+ControllerAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 3/27/14.
//
//

#import "HBNetwork+ControllerAdditions.h"

@implementation HBNetwork (ControllerAdditions)

- (CLBeaconRegion*) beaconRegion
{
    CLBeaconRegion *beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:[[NSUUID alloc] initWithUUIDString:self.proximityUUID]  major:[self.majorId doubleValue] identifier:self.proximityUUID];
    return beaconRegion;
}

@end

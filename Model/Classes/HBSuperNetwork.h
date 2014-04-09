//
//  HBSuperNetwork.h
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "HBModelObjectBase.h"

GENERICSABLE(HBSuperNetwork)

@interface HBSuperNetwork : HBModelObjectBase<HBSuperNetwork>

@property (nonatomic,strong) NSString *displayName;
@property (nonatomic,strong) NSString *latitude;
@property (nonatomic,strong) NSString *longitude;
@property (nonatomic,strong) NSString *proximityUUID;

@end

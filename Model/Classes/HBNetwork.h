//
//  HBNetwork.h
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "HBModelObjectBase.h"

GENERICSABLE(HBNetwork)

@interface HBNetwork : HBModelObjectBase<HBNetwork>

@property (nonatomic,strong) NSString *displayName;
@property (nonatomic,strong) NSString *latitude;
@property (nonatomic,strong) NSString *longitude;
@property (nonatomic,strong) NSString *majorId;
@property (nonatomic,strong) NSString *networkIdentifier;
@property (nonatomic,strong) NSString *proximityUUID;
@property (nonatomic,strong) NSString *superNetworkId;
@property (nonatomic,strong) NSArray *userIds;

@end

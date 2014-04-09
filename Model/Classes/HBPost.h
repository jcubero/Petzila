//
//  HBPost.h
//  Pods
//
//  Created by Vincil Bishop on 3/9/14.
//
//

#import "HBModelObjectBase.h"

@interface HBPost : HBModelObjectBase

@property (nonatomic,strong) NSString *imageURL;
@property (nonatomic,strong) NSString *networkId;
@property (nonatomic,strong) NSString *postCategoryId;
@property (nonatomic,strong) NSString *postTitle;
@property (nonatomic,strong) NSString *userId;

@end

//
//  HBPostController.m
//  Pods
//
//  Created by Vincil Bishop on 4/6/14.
//
//

#import "HBPostController.h"
#import "HBNetworkController.h"

#define postsForNetwork @"postsForNetwork"

@implementation HBPostController

static HBPostController *_sharedController;

+ (HBPostController*) sharedController
{
    if (!_sharedController) {
        _sharedController = [HBPostController new];
    }
    
    return _sharedController;
}

- (id) init
{
    self = [super init];
    
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNetworkJoined:) name:kHBNetworkController_NetworkJoined_Notification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNetworkUnJoined:) name:kHBNetworkController_NetworkUnJoined_Notification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlePostsUpdated:) name:[NSString stringWithFormat:@"%@_added",@"post"] object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlePostsUpdated:) name:[NSString stringWithFormat:@"%@_updated",@"post"] object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlePostsUpdated:) name:[NSString stringWithFormat:@"%@_removed",@"post"] object:nil];
        
    }
    
    return self;
}

- (void) handleNetworkJoined:(NSNotification*)notification
{
    [[MYMeteorClient sharedClient] addSubscription:postsForNetwork withParameters:@[[HBNetworkController sharedController].currentNetwork._id]];
    
    
    [[NSOperationQueue backgroundQueue] addOperationWithBlock:^{
        NSArray *parameters = @[@{@"userId":[[MYMeteorClient sharedClient] userId],
                                  @"postCategoryId":@"9rHXbaDWhoz5Qc2uu",
                                  @"networkId":[HBNetworkController sharedController].currentNetwork._id,
                                  @"postTitle":[NSString stringWithFormat:@"Test Post %@",[NSDate date]],
                                  @"postText":@"This is test text from a semi-real post..."}];
        
        // add a document
        [[MYMeteorClient sharedClient] callMethodName:@"/post/insert"
                                           parameters:parameters
                                     responseCallback:^(NSDictionary *response, NSError *error) {
                                         
                                         DDLogVerbose(@"response: %@",response);
                                         
                                     }];
        
    } afterDelay:3];
}

- (void) handleNetworkUnJoined:(NSNotification*)notification
{
    [[MYMeteorClient sharedClient] removeSubscription:postsForNetwork];
}

- (void) handlePostsUpdated:(NSNotification*)notification
{
    DDLogVerbose(@"postsUpdated:%@:%@",notification.object,notification.userInfo);
}

@end

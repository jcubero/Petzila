//
//  PZHomeTabBarController.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZHomeTabBarController.h"

#define kHomeTabIndex   0
#define kPostsTabIndex  1
#define kChatTabIndex   2
#define kUsersTabIndex  3
#define kAlertsTabIndex 4

@interface PZHomeTabBarController ()

@end

@implementation PZHomeTabBarController

static PZHomeTabBarController *_sharedController;

+ (PZHomeTabBarController*) sharedController
{
    return _sharedController;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        _sharedController = self;
    }
    
    return self;
}

- (void) goToHome
{
    [self setSelectedIndex:kHomeTabIndex];
}

- (void) goToPosts
{
    [self setSelectedIndex:kPostsTabIndex];
}

- (void) goToMessaging
{
    [self setSelectedIndex:kChatTabIndex];
}

- (void) goToUsers
{
    [self setSelectedIndex:kUsersTabIndex];
}

- (void) goToAlerts
{
    [self setSelectedIndex:kAlertsTabIndex];
}

@end

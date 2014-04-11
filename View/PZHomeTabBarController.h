//
//  HBHomeTabBarController.h
//  HereByApp
//
//  Created by Vincil Bishop on 4/1/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PZHomeTabBarController : UITabBarController

+ (PZHomeTabBarController*) sharedController;

- (void) goToHome;
- (void) goToPosts;
- (void) goToMessaging;
- (void) goToUsers;
- (void) goToAlerts;

@end

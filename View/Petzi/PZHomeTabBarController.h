//
//  PZHomeTabBarController.h
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
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

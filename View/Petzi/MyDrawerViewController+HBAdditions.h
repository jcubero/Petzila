//
//  MyDrawerViewController+PZAdditions.h
//  HereByApp
//
//  Created by Joaquin Cubero on 4/9/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "MYDrawerViewController.h"

@interface MYDrawerViewController (PZAdditions)

- (void) goToHome;
- (void) goToPosts;
- (void) goToMessaging;
- (void) goToUsers;
- (void) goToAlerts;
- (void) goToSettings;

- (void) goToViewControllerWithIdentifier:(NSString *)identifier;

@end

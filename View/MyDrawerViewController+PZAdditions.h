//
//  MyDrawerViewController+PZAdditions.h
//  HereByApp
//
//  Created by Vincil Bishop on 3/9/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
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

//
//  MyDrawerViewController+PZAdditions.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/9/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "MyDrawerViewController+PZAdditions.h"

@implementation MYDrawerViewController (PZAdditions)

#pragma mark - Navigation Methods -

- (void) goToHome
{
    [self goToViewControllerWithIdentifier:@"PZHomeTabBarController"];
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [[UITabBarController sharedHomeController] goToHome];
    } afterDelay:0.25];
}

- (void) goToPosts
{
    [self goToViewControllerWithIdentifier:@"PZHomeTabBarController"];
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [[UITabBarController sharedHomeController] goToPosts];
    } afterDelay:0.25];
    
}

- (void) goToMessaging
{
    [self goToViewControllerWithIdentifier:@"PZHomeTabBarController"];
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [[UITabBarController sharedHomeController] goToMessaging];
    } afterDelay:0.25];
    
}

- (void) goToUsers
{
    [self goToViewControllerWithIdentifier:@"PZHomeTabBarController"];
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [[UITabBarController sharedHomeController] goToUsers];
    } afterDelay:0.25];
}

- (void) goToAlerts
{
    [self goToViewControllerWithIdentifier:@"PZHomeTabBarController"];

    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [[UITabBarController sharedHomeController] goToAlerts];
    } afterDelay:0.25];
}

- (void) goToSettings
{
    [self goToViewControllerWithIdentifier:@"PZSettingsNavigationController"];
}

#pragma mark - Helpers -

- (void) goToViewControllerWithIdentifier:(NSString *)identifier
{
    [self goToViewControllerWithIdentifier:identifier storyboard:[UIStoryboard mainStoryboard]];
    [[MYDrawerViewController sharedViewController] closeDrawerAnimated:YES completion:NULL];
}

@end

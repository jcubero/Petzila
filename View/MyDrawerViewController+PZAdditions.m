//
//  MyDrawerViewController+PZAdditions.m
//  HereByApp
//
//  Created by Vincil Bishop on 3/9/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import "MyDrawerViewController+PZAdditions.h"

@implementation MYDrawerViewController (PZAdditions)

#pragma mark - Navigation Methods -

- (void) goToHome
{
//    [self goToViewControllerWithIdentifier:@"PZHomeTabBarController"];
//    
//    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//        [[UITabBarController sharedHomeController] goToHome];
//    } afterDelay:0.25];
}

- (void) goToPosts
{
    
}

- (void) goToMessaging
{
    
}

- (void) goToUsers
{
}

- (void) goToAlerts
{
}

- (void) goToSettings
{
}

#pragma mark - Helpers -

- (void) goToViewControllerWithIdentifier:(NSString *)identifier
{
    [self goToViewControllerWithIdentifier:identifier storyboard:[UIStoryboard mainStoryboard]];
    [[MYDrawerViewController sharedViewController] closeDrawerAnimated:YES completion:NULL];
}

@end

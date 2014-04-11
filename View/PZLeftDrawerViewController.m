//
//  PZLeftDrawerViewController.m
//  HereByApp
//
//  Created by Vincil Bishop on 3/22/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import "PZLeftDrawerViewController.h"

@interface PZLeftDrawerViewController ()

@end

@implementation PZLeftDrawerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
//    if ([identifier isEqualToString:@"goToHome"]) {
//        [[MYDrawerViewController sharedViewController] goToHome];
//        return NO;
//    }
//    else if ([identifier isEqualToString:@"goToPosts"]) {
//        [[MYDrawerViewController sharedViewController] goToPosts];
//        return NO;
//    }
//    else if ([identifier isEqualToString:@"goToMessaging"]) {
//        [[MYDrawerViewController sharedViewController] goToMessaging];
//        return NO;
//    }
//    else if ([identifier isEqualToString:@"goToUsers"]) {
//        [[MYDrawerViewController sharedViewController] goToUsers];
//        return NO;
//    }
//    else if ([identifier isEqualToString:@"goToAlerts"]) {
//        [[MYDrawerViewController sharedViewController] goToAlerts];
//        return NO;
//    }
//    else if ([identifier isEqualToString:@"goToSettings"]) {
//        [[MYDrawerViewController sharedViewController] goToSettings];
//        return NO;
//    }
//    else if ([identifier isEqualToString:@"logout"]) {
//        [UIAlertView showWithTitle:@"Logout" message:@"Are you sure you want to log out?" cancelButtonTitle:@"No" otherButtonTitles:@[@"Yes"] tapBlock:^(UIAlertView *alertView, NSInteger buttonIndex) {
//            // TODO: Implement Logout
//        }];
//        return NO;
//    }
    
    return YES;
}


@end

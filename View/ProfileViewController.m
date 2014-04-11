//
//  ProfileViewController.m
//  Mytest
//
//  Created by Dimitris Bouzikas on 2/19/14.
//  Copyright (c) 2014 com.bloomarank. All rights reserved.
//

#import "ProfileViewController.h"
#import "RootViewController.h"
#import "PZAppDelegate.h"
#import "User.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

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
    
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if(![(PZAppDelegate*)[[UIApplication sharedApplication] delegate] authenticated]) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
        
        RootViewController *initView =  (RootViewController*)[storyboard instantiateViewControllerWithIdentifier:@"initialView"];
        [initView setModalPresentationStyle:UIModalPresentationFullScreen];
        [self presentViewController:initView animated:NO completion:nil];
    } else{
        // proceed with the profile view
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logoutAction:(id)sender {
    User *userObj = [[User alloc] init];
    [userObj logout];
    
    PZAppDelegate *authObj = (PZAppDelegate*)[[UIApplication sharedApplication] delegate];
    authObj.authenticated = YES;
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    
    RootViewController *initView =  (RootViewController*)[storyboard instantiateViewControllerWithIdentifier:@"initialView"];
    [initView setModalPresentationStyle:UIModalPresentationFullScreen];
    [self presentViewController:initView animated:NO completion:nil];
    
}

@end

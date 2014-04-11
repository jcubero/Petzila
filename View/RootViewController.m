//
//  RootViewController.m
//  Mytest
//
//  Created by Dimitris Bouzikas on 2/19/14.
//  Copyright (c) 2014 com.bloomarank. All rights reserved.
//

#import "RootViewController.h"
#import "LoginViewController.h"
#import "PZAppDelegate.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize loginView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginBtnPressed:(id)sender {
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(loginActionFinished:)
                                                 name:@"loginActionFinished"
                                               object:loginView];
    
}

#pragma mark - Dismissing Delegate Methods

-(void) loginActionFinished:(NSNotification*)notification {
    
    PZAppDelegate *authObj = (PZAppDelegate*)[[UIApplication sharedApplication] delegate];
    authObj.authenticated = YES;
    
    [self dismissLoginAndShowProfile];
}

- (void)dismissLoginAndShowProfile {
    [self dismissViewControllerAnimated:NO completion:^{
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
        UITabBarController *tabView = [storyboard instantiateViewControllerWithIdentifier:@"profileView"];
        [self presentViewController:tabView animated:YES completion:nil];
    }];
        
    
}

@end

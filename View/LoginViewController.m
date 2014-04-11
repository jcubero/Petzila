//
//  LoginViewController.m
//  Mytest
//
//  Created by Dimitris Bouzikas on 2/19/14.
//  Copyright (c) 2014 com.bloomarank. All rights reserved.
//

#import "LoginViewController.h"
#import "User.h"
#import "PZColors.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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

- (IBAction)submitBtnPressed:(id)sender {
    User *userObj = [[User alloc] init];
    
    // Here you can get the data from login form
	// and proceed to authenticate process
    NSString *username = @"username retrieved through login form";
    NSString *password = @"password retrieved through login form";
    [userObj loginWithUsername:username andPassword:password];
}

@end

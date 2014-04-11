//
//  PZLoginViewController.m
//  HereByApp
//
//  Created by Vincil Bishop on 3/9/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import "PZLoginViewController.h"

@interface PZLoginViewController ()

@end

@implementation PZLoginViewController

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

    __block PZLoginViewController *blockSelf = self;
    
    self.loginBlock = ^void(NSString *email, NSString *password)
    {
        [[MYMeteorClient sharedClient] logonWithUsername:email password:password responseCallback:^(NSDictionary *response, NSError *error) {
            DDLogVerbose(@"Response: %@",response);
            
            if ([response logonSuccess]) {
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    [blockSelf dismissViewControllerAnimated:YES completion:NULL];
                }];
            } else {
                
            }
        }];
    };
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

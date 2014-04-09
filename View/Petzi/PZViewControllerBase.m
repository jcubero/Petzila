//
//  PZViewControllerBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/9/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZViewControllerBase.h"

@interface PZViewControllerBase ()

@end

@implementation PZViewControllerBase

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
	
    [self setupStandardDrawers];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

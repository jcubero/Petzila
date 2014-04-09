//
//  PZTableViewControllerBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 3/22/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZTableViewControllerBase.h"

@interface PZTableViewControllerBase ()

@end

@implementation PZTableViewControllerBase

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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

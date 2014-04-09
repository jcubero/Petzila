//
//  PZSuperNetworkTableViewControllerBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 3/31/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZSuperNetworkTableViewControllerBase.h"

@interface PZSuperNetworkTableViewControllerBase ()

@end

@implementation PZSuperNetworkTableViewControllerBase

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self configureForCollection:kPZSuperNetwork prameters:nil];
        self.modelClass = [PZSuperNetwork class];
        
    }
    return self;
}

@end

//
//  PZUserTableViewControllerBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZUserTableViewControllerBase.h"

@interface PZUserTableViewControllerBase ()

@end

@implementation PZUserTableViewControllerBase

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self configureForCollection:kPZUser prameters:nil];
        self.modelClass = [PZUser class];
        
    }
    return self;
}

@end

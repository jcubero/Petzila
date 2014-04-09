//
//  PZPostTableViewControllerBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 3/31/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZPostTableViewControllerBase.h"

@interface PZPostTableViewControllerBase ()

@end

@implementation PZPostTableViewControllerBase

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self configureForCollection:kPZPost prameters:nil];
        self.modelClass = [PZPost class];
        
    }
    return self;
}

@end

//
//  HBNetworkTableViewControllerBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 3/31/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "HBNetworkTableViewControllerBase.h"
#import "HBNetworkTableViewCellBase.h"

@interface HBNetworkTableViewControllerBase ()

@end

@implementation HBNetworkTableViewControllerBase

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self configureForCollection:kHBNetwork_networksInRange prameters:nil subscribe:NO];
        self.modelClass = [HBNetwork class];

    }
    return self;
}

@end

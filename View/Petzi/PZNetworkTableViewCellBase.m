//
//  PZNetworkTableViewCellBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZNetworkTableViewCellBase.h"

@implementation PZNetworkTableViewCellBase

- (void) configureCellWithModelObject:(PZNetwork *)modelObject
{
    self.network = modelObject;
    self.nameLabel.text = modelObject.displayName;
}

@end

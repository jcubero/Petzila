//
//  PZSuperNetworkTableViewCellBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZSuperNetworkTableViewCellBase.h"

@implementation PZSuperNetworkTableViewCellBase

- (void) configureCellWithModelObject:(PZSuperNetwork *)modelObject
{
    self.superNetwork = modelObject;
    self.nameLabel.text = modelObject.displayName;
}

@end

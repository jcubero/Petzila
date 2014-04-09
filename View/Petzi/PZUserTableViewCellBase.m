//
//  PZUserTableViewCellBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZUserTableViewCellBase.h"

@implementation PZUserTableViewCellBase

- (void) configureCellWithModelObject:(PZUser *)modelObject
{
    self.user = modelObject;
    self.nameLabel.text = modelObject.username;
}

@end

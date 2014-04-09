//
//  PZPostTableViewCellBase.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZPostTableViewCellBase.h"

@implementation PZPostTableViewCellBase

- (void) configureCellWithModelObject:(PZPost *)modelObject
{
    self.post = modelObject;
    self.nameLabel.text = modelObject.postTitle;
}

@end

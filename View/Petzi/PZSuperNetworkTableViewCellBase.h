//
//  PZSuperNetworkTableViewCellBase.h
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "PZModelTableViewCellBase.h"

@interface PZSuperNetworkTableViewCellBase : PZModelTableViewCellBase

@property (nonatomic,strong) PZSuperNetwork *superNetwork;
@property (nonatomic) IBOutlet UILabel* nameLabel;

@end

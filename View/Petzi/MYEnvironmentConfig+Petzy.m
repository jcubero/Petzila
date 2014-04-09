//
//  MYEnvironmentConfig+HereBy.m
//  HereByApp
//
//  Created by Joaquin Cubero on 3/31/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "MYEnvironmentConfig+Petzy.h"

@implementation MYEnvironmentConfig (HereBy)

- (NSString*) meteorURLString
{
    NSString *meteorURLString = [NSString stringWithFormat:self.configValues[@"meteorURLFormat"],self.configValues[@"host"]];
    
    return meteorURLString;
}

@end

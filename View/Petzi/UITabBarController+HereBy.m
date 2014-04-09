//
//  UITabBarController+HereBy.m
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import "UITabBarController+HereBy.h"

@implementation UITabBarController (HereBy)

+ (PZHomeTabBarController*) sharedHomeController
{
    return [PZHomeTabBarController sharedController];
}

@end

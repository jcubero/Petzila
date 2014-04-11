//
//  UITabBarController+HereBy.m
//  HereByApp
//
//  Created by Vincil Bishop on 4/1/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import "UITabBarController+Petzi.h"

@implementation UITabBarController (Petzi)

+ (PZHomeTabBarController*) sharedHomeController
{
    return [PZHomeTabBarController sharedController];
}

@end

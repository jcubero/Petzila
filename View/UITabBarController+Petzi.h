//
//  UITabBarController+HereBy.h
//  HereByApp
//
//  Created by Vincil Bishop on 4/1/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PZHomeTabBarController.h"

@interface UITabBarController (Petzi)

+ (PZHomeTabBarController*) sharedHomeController;

@end

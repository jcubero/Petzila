//
//  UITabBarController+HereBy.h
//  HereByApp
//
//  Created by Joaquin Cubero on 4/1/14.
//  Copyright (c) 2014 Petzila. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PZHomeTabBarController.h"

@interface UITabBarController (HereBy)

+ (PZHomeTabBarController*) sharedHomeController;

@end

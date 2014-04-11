//
//  PZColors.m
//  Petzi
//
//  Created by Joaquin on 10/04/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import "PZColors.h"


@implementation PZColors

+(UIColor *) getColorForType:(PZColorsTypes)colorType
{
    
    switch (colorType) {
        case PZColorsBossanova:
            return [UIColor colorWithRed:85 green:54 blue:95 alpha:1];
        case PZColorsBossanova1:
            return [UIColor colorWithRed:71 green:44 blue:79 alpha:1];
        case PZColorsTrendyPink:
            return [UIColor colorWithRed:133 green:88 blue:143 alpha:1];
        default:
            return [UIColor whiteColor];
    }
}
@end

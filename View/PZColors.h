//
//  PZColors.h
//  Petzi
//
//  Created by Joaquin on 10/04/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    PZColorsTrendyPink,
    PZColorsBossanova,
    PZColorsBossanova1
} PZColorsTypes;


@interface PZColors : NSObject

+(UIColor *) getColorForType:(PZColorsTypes)colorType;


@end

//
//  User.m
//  Mytest
//
//  Created by Dimitris Bouzikas on 2/19/14.
//  Copyright (c) 2014 com.bloomarank. All rights reserved.
//

#import "User.h"

@implementation User

- (void)loginWithUsername:(NSString *)username andPassword:(NSString *)password{
    
    // Validate user here with your implementation
    // and notify the root controller
    [[NSNotificationCenter defaultCenter] postNotificationName:@"loginActionFinished" object:self userInfo:nil];
}

- (void)logout{
    // Here you can delete the account
}

- (BOOL)userAuthenticated {
    
    // This variable is only for testing
    // Here you have to implement a mechanism
    BOOL auth = YES;
    
    if (auth) {
        return YES;
    }
    
    return NO;
}

@end

//
//  RootViewController.h
//  Mytest
//
//  Created by Dimitris Bouzikas on 2/19/14.
//  Copyright (c) 2014 com.bloomarank. All rights reserved.
//

#import "PZViewControllerBase.h"
#import "LoginViewController.h"

@protocol LoginViewProtocol <NSObject>

- (void)dismissAndLoginView;

@end

@interface RootViewController : PZViewControllerBase

@property (nonatomic, weak) id <LoginViewProtocol> delegate;
@property (nonatomic, retain) LoginViewController *loginView;


@end

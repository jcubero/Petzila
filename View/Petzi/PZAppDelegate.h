//
//  PZAppDelegate.h
//  Petzi
//
//  Created by Joaquin on 09/04/14.
//  Copyright (c) 2014 Premier Mobile Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
@property (nonatomic) BOOL authenticated;
@end

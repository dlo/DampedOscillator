//
//  LHAppDelegate.m
//  DampedOscillator
//
//  Created by Dan Loewenherz on 7/10/13.
//  Copyright (c) 2013 Lionheart Software LLC. All rights reserved.
//

#import "LHAppDelegate.h"

#import "LHViewController.h"

@implementation LHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[LHViewController alloc] init];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

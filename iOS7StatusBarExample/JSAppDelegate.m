//
//  JSAppDelegate.m
//  iOS7StatusBarExample
//
//  Created by Js Lim on 6/16/14.
//  Copyright (c) 2014 Js Lim. All rights reserved.
//

#import "JSAppDelegate.h"
#import "JSMainViewController.h"

@implementation JSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    JSMainViewController *mainViewController = [[JSMainViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    navigationController.navigationBar.translucent = NO;
    self.window.rootViewController = navigationController;
    
    // styling
    UIColor *barBackgroundColor = [UIColor colorWithRed:107/255.0 green:207/255.0 blue:250/255.0 alpha:1];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIFont fontWithName:@"HelveticaNeue-Bold" size:17], UITextAttributeFont,
                                                          [UIColor whiteColor], UITextAttributeTextColor,
                                                          [UIColor clearColor], UITextAttributeTextShadowColor,
                                                          nil]];
    [[UIBarButtonItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIFont fontWithName:@"HelveticaNeue-Medium" size:15], UITextAttributeFont,
                                                          [UIColor whiteColor], UITextAttributeTextColor,
                                                          [UIColor clearColor], UITextAttributeTextShadowColor,
                                                          nil] forState:UIControlStateNormal];
    [[UINavigationBar appearance] setBarTintColor:barBackgroundColor];
    // [[UINavigationBar appearance] setBarStyle:UIBarStyleBlackTranslucent];
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

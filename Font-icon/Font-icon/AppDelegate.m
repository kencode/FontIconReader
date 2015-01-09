//
//  AppDelegate.m
//  Font-icon
//
//  Created by 王宏 on 15/1/8.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "AppDelegate.h"
#import <IconFont.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UITabBarController *tabController = (UITabBarController *)self.window.rootViewController;
    UIViewController *firstController = [tabController.childViewControllers objectAtIndex:0];
    UIViewController *secondController = [tabController.childViewControllers objectAtIndex:1];
    UIViewController *thirdController = [tabController.childViewControllers objectAtIndex:2];
    UIViewController *fourthController = [tabController.childViewControllers objectAtIndex:3];
    
    firstController.tabBarItem.image = [IconFont imageWithIcon:[IconFont icon:@"fa_coffee" fromFont:fontAwesome] fontName:fontAwesome iconColor:[UIColor blueColor] iconSize:24.0f];
    firstController.tabBarItem.title = fontAwesome;
    
    secondController.tabBarItem.image =[IconFont imageWithIcon:[IconFont icon:@"fa_glass" fromFont:fontAwesome] fontName:fontAwesome iconColor:[UIColor blueColor] iconSize:24.0f];
    secondController.tabBarItem.title = foundationIcons;
//
//    
    thirdController.tabBarItem.image = [IconFont imageWithIcon:[IconFont icon:@"fa_beer" fromFont:fontAwesome] fontName:fontAwesome iconColor:[UIColor blueColor] iconSize:24.0f];
    thirdController.tabBarItem.title = ionIcons;
//
    fourthController.tabBarItem.image = [IconFont imageWithIcon:[IconFont icon:@"fa_bitbucket" fromFont:fontAwesome] fontName:fontAwesome iconColor:[UIColor blueColor] iconSize:24.0f];
    fourthController.tabBarItem.title = zocialRegularWebfont;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

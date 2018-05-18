//
//  AppDelegate.m
//  CCFontiOS
//
//  Created by dengyouhua on 17/2/6.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "AppDelegate.h"
#import <CCStat.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [CCStat loadingMobStat:CCStatTypeHSFont showDetail:NO];
    
    return YES;
}

@end

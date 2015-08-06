//
//  AppDelegate.m
//  TBRAdWindowExample
//
//  Created by Luciano Marisi on 06/08/2015.
//  Copyright (c) 2015 TechBrewers LTD. All rights reserved.
//

#import "AppDelegate.h"
#import "TBRAdWindow.h"

@interface AppDelegate ()
@property (nonatomic, strong) TBRAdWindow *adWindow;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Setup TBRAdWindow
  self.adWindow = [TBRAdWindow sharedWindow];
  [self.adWindow makeKeyAndVisible];
  
  // Show Ads
  [TBRAdWindow showBannerAd];
  return YES;
}

@end

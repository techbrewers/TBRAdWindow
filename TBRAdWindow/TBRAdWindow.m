//
//  TBRAdWindow.m
//  TBRAdWindow
//
//  Created by Luciano Marisi on 30/05/2015.
//  Copyright (c) 2015 TechBrewers LTD. All rights reserved.
//

#import "TBRAdWindow.h"
#import "TBRAdsViewController.h"

@interface TBRAdWindow ()
@property (nonatomic, strong) TBRAdsViewController *adsViewController;
@end

@implementation TBRAdWindow

#pragma mark - Object lifecycle

+ (instancetype)sharedWindow
{
  static TBRAdWindow *sharedTBRAdWindow = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedTBRAdWindow = [[TBRAdWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    sharedTBRAdWindow.windowLevel = UIWindowLevelStatusBar;
    sharedTBRAdWindow.adsViewController = [[TBRAdsViewController alloc] init];
    sharedTBRAdWindow.rootViewController = sharedTBRAdWindow.adsViewController;
  });
  return sharedTBRAdWindow;
}

#pragma mark - Public methods

+ (void)showBannerAd
{
  TBRAdWindow *sharedWindow = self.sharedWindow;
  [sharedWindow.adsViewController showBannerAd];
}

+ (void)hideBannerAd
{
  TBRAdWindow *sharedWindow = self.sharedWindow;
  [sharedWindow.adsViewController hideBannerAd];
}

#pragma mark - Ignore touches to TBRAdWindow but not its children views

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
  UIView *hitView = [super hitTest:point withEvent:event];
  
  if (hitView == self) {
    return nil;
  }
  return hitView;
}

@end

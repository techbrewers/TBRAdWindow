//
//  TBRAdsViewController.m
//  TBRAdWindow
//
//  Created by Luciano Marisi on 30/05/2015.
//  Copyright (c) 2015 TechBrewers LTD. All rights reserved.
//

@import iAd;

#import "TBRAdsViewController.h"
#import "TBRTouchDisabledView.h"

@interface TBRAdsViewController () <ADBannerViewDelegate>
@property (nonatomic, strong) ADBannerView *bannerAdView;
@end

@implementation TBRAdsViewController

#pragma mark - Object initilization

- (void)loadView
{
  self.view = [[TBRTouchDisabledView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

#pragma mark - Public methods

- (void)showBannerAd
{
  [self.view addSubview:self.bannerAdView];
}

- (void)hideBannerAd
{
  [self.bannerAdView removeFromSuperview];
  self.bannerAdView = nil;
}

#pragma mark - Helper methods

- (ADBannerView *)bannerAdView
{
  ADBannerView * bannerAdView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
  bannerAdView.delegate = self;
  CGRect bannerViewFrame = bannerAdView.frame;
  CGSize windowSize = [UIScreen mainScreen].bounds.size;
  bannerViewFrame.origin.y = windowSize.height - bannerViewFrame.size.height;
  bannerAdView.frame = bannerViewFrame;
  bannerAdView.hidden = YES;
  return bannerAdView;
}

#pragma mark - ADBannerViewDelegate

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
  banner.hidden = NO;
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
  banner.hidden = YES;
}

@end

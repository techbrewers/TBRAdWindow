//
//  TBRAdWindow.h
//  TBRAdWindow
//
//  Created by Luciano Marisi on 30/05/2015.
//  Copyright (c) 2015 TechBrewers LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBRAdWindow : UIWindow

/**
 *  Singleton instance of the TBRAdWindow
 */
+ (instancetype)sharedWindow;

/**
 *  Show the banner ad
 */
+ (void)showBannerAd;

/**
 *  Hide the banner ad
 */
+ (void)hideBannerAd;

@end



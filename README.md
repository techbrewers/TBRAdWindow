TBRAdWindow
=======================

[![Build Status](https://travis-ci.org/techbrewers/TBRAdWindow.png)](https://travis-ci.org/techbrewers/TBRAdWindow)

Ads iAds to your app with just a few lines of code! Can be modified to support other Ad frameworks easily.

Installation
-------------

* Add the classes inside TBRAdWindow folder to your project
	*	TBRAdWindow
	*	TBRAdsViewController
	*	TBRTouchDisabledView


Example
-----------------------
```objc
@interface AppDelegate ()
@property (nonatomic, strong) TBRAdWindow *adWindow;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Setup TBRAdWindow in the app delegate
  self.adWindow = [TBRAdWindow sharedWindow];
  [self.adWindow makeKeyAndVisible];
  return YES;
}

@end

// Call the showBannerAd method anywhere in your app to display the ads
[TBRAdWindow showBannerAd];

// Call the hideBannerAd method anywhere in your app to hide the ads
[TBRAdWindow hideBannerAd];
```

License
==================

The MIT License (MIT)

Copyright (c) 2014 TechBrewers LTD.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
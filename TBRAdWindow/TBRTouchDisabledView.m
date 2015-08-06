//
//  TBRTouchDisabledView.m
//  TBRAdWindow
//
//  Created by Luciano Marisi on 30/05/2015.
//  Copyright (c) 2015 TechBrewers LTD. All rights reserved.
//

#import "TBRTouchDisabledView.h"

@implementation TBRTouchDisabledView

#pragma mark - Ignore touches to this UIView but not its children views

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
  UIView *hitView = [super hitTest:point withEvent:event];
  
  if (hitView == self) {
    return nil;
  }
  return hitView;
}

@end

//
//  UINavigationController+WLNav.m
//  PresentPush
//
//  Created by wangxiaoli on 2018/9/4.
//  Copyright © 2018年 Sunshine. All rights reserved.
//

#import "UINavigationController+WLNav.h"

@implementation UINavigationController (WLNav)
- (void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion
{
    if (self.presentedViewController) {
        [super dismissViewControllerAnimated:flag completion:completion];
    }
}
@end

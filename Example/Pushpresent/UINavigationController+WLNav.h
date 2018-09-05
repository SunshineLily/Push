//
//  UINavigationController+WLNav.h
//  PresentPush
//
//  Created by wangxiaoli on 2018/9/4.
//  Copyright © 2018年 Sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (WLNav)

- (void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion;

@end

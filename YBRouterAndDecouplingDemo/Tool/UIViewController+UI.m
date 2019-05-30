//
//  UIViewController+UI.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "UIViewController+UI.h"

UINavigationController *YBTopNavigationController(void) {
    return UIViewController.yb_top.navigationController;
}

@implementation UIViewController (UI)

+ (UIWindow *)yb_normalWindow {
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for (UIWindow *temp in windows) {
            if (temp.windowLevel == UIWindowLevelNormal) {
                window = temp;
                break;
            }
        }
    }
    return window;
}

+ (UIViewController *)yb_top {
    
    UIViewController *topController = nil;
    UIWindow *window = [self yb_normalWindow];
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    if ([nextResponder isKindOfClass:UIViewController.class]) {
        topController = nextResponder;
    } else {
        topController = window.rootViewController;
    }
    
    while ([topController isKindOfClass:UITabBarController.class] || [topController isKindOfClass:UINavigationController.class]) {
        if ([topController isKindOfClass:UITabBarController.class]) {
            topController = ((UITabBarController *)topController).selectedViewController;
        } else if ([topController isKindOfClass:UINavigationController.class]) {
            topController = ((UINavigationController *)topController).topViewController;
        }
    }
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}

@end

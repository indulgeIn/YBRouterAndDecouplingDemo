//
//  UIViewController+UI.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

UINavigationController *YBTopNavigationController(void);

@interface UIViewController (UI)

/** 获取顶层的 UIViewController 实例 */
+ (UIViewController *)yb_top;

@end

NS_ASSUME_NONNULL_END

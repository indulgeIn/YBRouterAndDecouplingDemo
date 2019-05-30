//
//  DAimController.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DAimController : UIViewController

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) void(^callBack)(void);

@end

NS_ASSUME_NONNULL_END

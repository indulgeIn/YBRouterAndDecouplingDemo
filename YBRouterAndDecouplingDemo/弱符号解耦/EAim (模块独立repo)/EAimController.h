//
//  EAimController.h
//  YBRouterAndDecouplingDemo
//
//  Created by 波儿菜 on 2019/11/17.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EAimController : UIViewController

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) void(^callBack)(void);

@end

NS_ASSUME_NONNULL_END

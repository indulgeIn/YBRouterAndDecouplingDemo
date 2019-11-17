//
//  CMediator.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMediator : NSObject

+ (instancetype)share;

/// 注册 Protocol : Class
- (void)registerService:(Protocol *)service class:(Class)cls;

/// 通过 Protocol 读取 [Class new]
- (id)getObject:(Protocol *)service;

@end

NS_ASSUME_NONNULL_END

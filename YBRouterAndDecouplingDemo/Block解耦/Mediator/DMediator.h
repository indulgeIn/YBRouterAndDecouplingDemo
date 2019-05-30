//
//  DMediator.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DMediator : NSObject

+ (instancetype)share;

/// 注册 key : block
- (void)registerKey:(NSString *)key block:(id _Nullable (^)(NSDictionary * _Nullable params))block;

/// 通过 key 执行 block
- (nullable id)excuteBlockWithKey:(NSString *)key params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END

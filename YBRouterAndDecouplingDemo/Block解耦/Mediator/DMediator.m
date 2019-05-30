//
//  DMediator.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "DMediator.h"

@interface DMediator ()
@property (nonatomic, strong) NSMutableDictionary *map;
@end

@implementation DMediator

+ (instancetype)share {
    static DMediator *mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [DMediator new];
        mediator.map = [NSMutableDictionary new];
    });
    return mediator;
}

- (void)registerKey:(NSString *)key block:(nonnull id _Nullable (^)(NSDictionary * _Nullable))block {
    if (!key || !block) return;
    self.map[key] = block;
}

/// 此方法就是一个拦截器，可做容错以及动态调度
- (id)excuteBlockWithKey:(NSString *)key params:(NSDictionary *)params {
    if (!key) return nil;
    id(^block)(NSDictionary *) = self.map[key];
    if (!block) return nil;
    return block(params);
}

@end

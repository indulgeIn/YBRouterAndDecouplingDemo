//
//  BMediator.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "BMediator.h"

@implementation BMediator

+ (instancetype)share {
    static BMediator *mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [BMediator new];
    });
    return mediator;
}

/// 此方法就是一个拦截器，可做容错以及动态调度
- (id)performTarget:(NSString *)target action:(NSString *)action params:(NSDictionary *)params {
    
    Class cls; id obj; SEL sel;
    
    cls = NSClassFromString(target);
    if (!cls) goto fail;
    sel = NSSelectorFromString(action);
    if (!sel) goto fail;
    obj = [cls new];
    if (![obj respondsToSelector:sel]) goto fail;
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [obj performSelector:sel withObject:params];
#pragma clang diagnostic pop
    
fail:
    NSLog(@"找不到目标，写容错逻辑");
    return nil;
}

@end

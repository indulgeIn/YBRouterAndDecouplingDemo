//
//  EMediator.m
//  YBRouterAndDecouplingDemo
//
//  Created by 波儿菜 on 2019/11/17.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "EMediator.h"

// 在这里做统一的路由失败处理
void ERouterNotFound(id params, ...) {
    if (params) {
        va_list argList;
        va_start(argList, params);
        id arg = params;
        do {
            NSLog(@"cur arg: %@", arg);
        } while ((arg = va_arg(argList, id)));
        va_end(argList);
    }
    NSLog(@"router not found");
}

@implementation EMediator

@end

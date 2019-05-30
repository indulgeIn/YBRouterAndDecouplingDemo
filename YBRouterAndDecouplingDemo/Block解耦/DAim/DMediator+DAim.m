//
//  DMediator+DAim.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "DMediator+DAim.h"

@implementation DMediator (DAim)

- (void)gotoDAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack {
    [self excuteBlockWithKey:@"gotoDAimKey" params:@{@"name":name, @"callBack":callBack}];
}

@end

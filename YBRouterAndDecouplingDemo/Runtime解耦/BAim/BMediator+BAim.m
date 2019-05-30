//
//  BMediator+BAim.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "BMediator+BAim.h"

static NSString * const kTarget = @"BTarget";
static NSString * const kAction = @"gotoBAimController:";

@implementation BMediator (BAim)

- (void)gotoBAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack {
    [self performTarget:kTarget action:kAction params:@{@"name":name, @"callBack":callBack}];
}

@end

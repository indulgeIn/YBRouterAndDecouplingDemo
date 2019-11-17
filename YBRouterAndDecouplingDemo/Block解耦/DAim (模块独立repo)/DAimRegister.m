//
//  DAimRegister.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "DAimRegister.h"
#import "DMediator.h"
#import "DAimController.h"

@implementation DAimRegister

+ (void)load {
    [DMediator.share registerKey:@"gotoDAimKey" block:^id _Nullable(NSDictionary * _Nullable params) {
        DAimController *vc = [DAimController new];
        vc.name = params[@"name"];
        vc.callBack = params[@"callBack"];
        [UIViewController.yb_top.navigationController pushViewController:vc animated:YES];
        return nil;
    }];
}

@end

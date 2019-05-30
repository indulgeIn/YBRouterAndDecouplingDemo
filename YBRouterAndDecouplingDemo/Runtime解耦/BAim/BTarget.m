//
//  BTarget.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "BTarget.h"
#import "BAimController.h"

@implementation BTarget

- (void)gotoBAimController:(NSDictionary *)params {
    BAimController *vc = [BAimController new];
    vc.name = params[@"name"];
    vc.callBack = params[@"callBack"];
    [UIViewController.yb_top.navigationController pushViewController:vc animated:YES];
}

@end

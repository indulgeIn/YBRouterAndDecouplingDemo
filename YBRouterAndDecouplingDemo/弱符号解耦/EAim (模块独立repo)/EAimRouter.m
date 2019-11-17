//
//  EAimRouter.m
//  YBRouterAndDecouplingDemo
//
//  Created by 波儿菜 on 2019/11/17.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "EAimRouter.h"
#import "EAimController.h"

void ERouterGotoEAimController(NSString *name, void(^callBack)(void)) {
    EAimController *vc = [EAimController new];
    vc.name = name;
    vc.callBack = callBack;
    [UIViewController.yb_top.navigationController pushViewController:vc animated:YES];
}

//
//  AMediator+AAim.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "AMediator+AAim.h"
#import "AAimController.h"

@implementation AMediator (AAim)

+ (void)gotoAAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack {
    AAimController *vc = [AAimController new];
    vc.name = name;
    vc.callBack = callBack;
    [YBTopNavigationController() pushViewController:vc animated:YES];
}

@end


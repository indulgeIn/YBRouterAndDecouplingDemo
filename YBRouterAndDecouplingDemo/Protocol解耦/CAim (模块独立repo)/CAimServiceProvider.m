//
//  CAimServiceProvider.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "CAimServiceProvider.h"
#import "CMediator.h"
#import "CAimController.h"

@implementation CAimServiceProvider

+ (void)load {
    [CMediator.share registerService:@protocol(CAimService) class:self];
}

#pragma mark - <CAimService>

- (void)gotoCAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack {
    CAimController *vc = [CAimController new];
    vc.name = name;
    vc.callBack = callBack;
    [UIViewController.yb_top.navigationController pushViewController:vc animated:YES];
}

@end

//
//  DController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "DController.h"
#import "DMediator+DAim.h"

@interface DController ()

@end

@implementation DController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [DMediator.share gotoDAimControllerWithName:@"From D" callBack:^{
        NSLog(@"DAim 回调");
    }];
    
    /*
    // 不使用语法糖
    [DMediator.share excuteBlockWithKey:@"gotoDAimKey" params:@{@"name":@"From D", @"callBack":^{
        NSLog(@"DAim 回调");
    }}];
     */
}

@end

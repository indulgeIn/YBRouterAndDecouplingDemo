//
//  BController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "BController.h"
#import "BMediator+BAim.h"

@interface BController ()

@end

@implementation BController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [BMediator.share gotoBAimControllerWithName:@"From B" callBack:^{
        NSLog(@"BAim 回调");
    }];
    
    /*
    // 不使用语法糖
    [BMediator.share performTarget:@"BTarget" action:@"gotoBAimController:" params:@{@"name":@"From B", @"callBack":^{
        NSLog(@"BAim 回调");
    }}];
     */
}

@end

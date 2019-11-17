//
//  EController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 波儿菜 on 2019/11/17.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "EController.h"
#import "EAimMediator.h"

@interface EController ()

@end

@implementation EController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    ERouterGotoEAimController(@"From E", ^{
        NSLog(@"EAim 回调");
    });
}

@end

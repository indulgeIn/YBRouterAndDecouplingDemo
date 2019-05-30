//
//  AController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "AController.h"
#import "AMediator+AAim.h"

@interface AController ()

@end

@implementation AController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [AMediator gotoAAimControllerWithName:@"From A" callBack:^{
        NSLog(@"AAim CallBack");
    }];
}

@end

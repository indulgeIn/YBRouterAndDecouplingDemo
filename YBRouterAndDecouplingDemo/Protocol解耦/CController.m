//
//  CController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "CController.h"
#import "CMediator.h"
#import "CAimService.h"

@interface CController ()

@end

@implementation CController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    id<CAimService> service = [CMediator.share getObject:@protocol(CAimService)];
    [service gotoCAimControllerWithName:@"From C" callBack:^{
        NSLog(@"CAim CallBack");
    }];
    
}

@end

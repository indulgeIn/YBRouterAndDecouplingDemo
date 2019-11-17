//
//  EAimController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 波儿菜 on 2019/11/17.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "EAimController.h"

@interface EAimController ()

@end

@implementation EAimController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationItem.title = self.name;
    if (self.callBack) {
        self.callBack();
    }
}

@end

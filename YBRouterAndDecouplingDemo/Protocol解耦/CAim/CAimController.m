//
//  CAimController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "CAimController.h"

@interface CAimController ()

@end

@implementation CAimController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationItem.title = self.name;
    if (self.callBack) {
        self.callBack();
    }
}

@end

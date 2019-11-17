//
//  DAimController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "DAimController.h"

@interface DAimController ()

@end

@implementation DAimController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationItem.title = self.name;
    if (self.callBack) {
        self.callBack();
    }
}

@end

//
//  DMediator+DAim.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "DMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMediator (DAim)

- (void)gotoDAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack;

@end

NS_ASSUME_NONNULL_END

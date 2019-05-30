//
//  BMediator+BAim.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "BMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMediator (BAim)

- (void)gotoBAimControllerWithName:(NSString *)name callBack:(void(^)(void))callBack;

@end

NS_ASSUME_NONNULL_END

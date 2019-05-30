//
//  AMediator+AAim.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "AMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AMediator (AAim)

+ (void)gotoAAimControllerWithName:(NSString *)name callBack:(void(^)(void))callBack;

@end

NS_ASSUME_NONNULL_END

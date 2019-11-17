//
//  CAimService.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CAimService <NSObject>

- (void)gotoCAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack;

@end

NS_ASSUME_NONNULL_END

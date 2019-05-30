//
//  BMediator.h
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BMediator : NSObject

+ (instancetype)share;

- (id)performTarget:(NSString *)target action:(NSString *)action params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END

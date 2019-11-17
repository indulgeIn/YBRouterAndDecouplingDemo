//
//  CMediator.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "CMediator.h"

@interface CMediator ()
@property (nonatomic, strong) NSMutableDictionary *map;
@end

@implementation CMediator

+ (instancetype)share {
    static CMediator *mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [CMediator new];
        mediator.map = [NSMutableDictionary new];
    });
    return mediator;
}

- (void)registerService:(Protocol *)service class:(Class)cls {
    if (!service || !cls) return;
    self.map[NSStringFromProtocol(service)] = cls;
}

- (id)getObject:(Protocol *)service {
    if (!service) return nil;
    Class cls = self.map[NSStringFromProtocol(service)];
    id obj = [cls new];
    if ([obj conformsToProtocol:service]) {
        return obj;
    }
    return nil;
}

@end

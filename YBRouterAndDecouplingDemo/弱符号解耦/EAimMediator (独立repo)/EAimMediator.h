//
//  EAimMediator.h
//  YBRouterAndDecouplingDemo
//
//  Created by 波儿菜 on 2019/11/17.
//  Copyright © 2019 杨波. All rights reserved.
//

#ifndef EAimMediator_h
#define EAimMediator_h
#import "EMediator.h"


__attribute__ ((weak)) void ERouterGotoEAimController(NSString *name, void(^callBack)(void)) {
    ERouterNotFound(name, callBack, nil);
}


#endif /* EAimMediator_h */

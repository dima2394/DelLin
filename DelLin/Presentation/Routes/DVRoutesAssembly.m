//
//  DVRoutesAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVRoutesAssembly.h"
#import "DVTerminalsRoute.h"

@implementation DVRoutesAssembly

- (id<RouteProtocol>)terminalsRoute {
    return [TyphoonDefinition withClass:[DVTerminalsRoute class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(moduleFactory) with:[self terminalsAssembly]];
    }];
}

@end

//
//  DVServicesAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVServicesAssembly.h"
#import "NetworkServiceImplementation.h"

@implementation DVServicesAssembly

- (id<NetworkService>)networkService {
    return [TyphoonDefinition withClass:[NetworkServiceImplementation class]];
}

@end
//
//  DVServicesAssembly.m
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVServicesAssembly.h"
#import "NetworkServiceImplementation.h"

@implementation DVServicesAssembly

- (id<NetworkServiceProtocol>)networkService {
    return [TyphoonDefinition withClass: [NetworkServiceImplementation class]];
}

@end

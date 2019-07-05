//
//  DVRoutesAssembly.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "TyphoonAssembly.h"
#import <RamblerTyphoonUtils/AssemblyCollector.h>

NS_ASSUME_NONNULL_BEGIN

@class TerminalsAssembly;
@protocol RouteProtocol;

@interface DVRoutesAssembly : TyphoonAssembly <RamblerInitialAssembly>

@property (nonatomic, strong) TerminalsAssembly *terminalsAssembly;

- (id<RouteProtocol>)terminalsRoute;

@end

NS_ASSUME_NONNULL_END

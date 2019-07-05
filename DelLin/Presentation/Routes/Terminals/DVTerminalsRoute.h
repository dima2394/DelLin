//
//  DVTerminalsRoute.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

@import Foundation;
#import "RouteProtocol.h"

@class TerminalsAssembly;
@protocol RamblerViperModuleFactoryProtocol;

NS_ASSUME_NONNULL_BEGIN

@interface DVTerminalsRoute : NSObject <RouteProtocol>

@property (nonatomic, strong) id<RamblerViperModuleFactoryProtocol> moduleFactory;

@end

NS_ASSUME_NONNULL_END

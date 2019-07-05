//
//  TerminalsRouter.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "TerminalsRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface TerminalsRouter : NSObject <TerminalsRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end

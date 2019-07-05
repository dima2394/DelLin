//
//  FormOrderRouter.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderRouterInput.h"

@class DVTerminalsRoute;

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface FormOrderRouter : NSObject <FormOrderRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;
@property (nonatomic, strong) DVTerminalsRoute *terminalsRoute;


@end

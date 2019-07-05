//
//  TerminalsAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "TerminalsAssembly.h"

#import "TerminalsViewController.h"
#import "TerminalsInteractor.h"
#import "TerminalsPresenter.h"
#import "TerminalsRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation TerminalsAssembly

- (TerminalsViewController *)viewTerminals {
    return [TyphoonDefinition withClass:[TerminalsViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTerminals]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTerminals]];
                          }];
}

- (TerminalsInteractor *)interactorTerminals {
    return [TyphoonDefinition withClass:[TerminalsInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTerminals]];
                          }];
}

- (TerminalsPresenter *)presenterTerminals{
    return [TyphoonDefinition withClass:[TerminalsPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTerminals]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTerminals]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTerminals]];
                          }];
}

- (TerminalsRouter *)routerTerminals{
    return [TyphoonDefinition withClass:[TerminalsRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTerminals]];
                          }];
}

- (id<RamblerViperModuleTransitionHandlerProtocol> _Nullable)instantiateModuleTransitionHandler {
    return [self viewTerminals];
}


@end

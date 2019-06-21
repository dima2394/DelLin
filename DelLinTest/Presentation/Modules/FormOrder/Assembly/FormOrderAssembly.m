//
//  FormOrderAssembly.m
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderAssembly.h"

#import "FormOrderViewController.h"
#import "FormOrderInteractor.h"
#import "FormOrderPresenter.h"
#import "FormOrderRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation FormOrderAssembly

- (FormOrderViewController *)viewFormOrder {
    return [TyphoonDefinition withClass:[FormOrderViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterFormOrder]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterFormOrder]];
                          }];
}

- (FormOrderInteractor *)interactorFormOrder {
    return [TyphoonDefinition withClass:[FormOrderInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterFormOrder]];
                          }];
}

- (FormOrderPresenter *)presenterFormOrder{
    return [TyphoonDefinition withClass:[FormOrderPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewFormOrder]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorFormOrder]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerFormOrder]];
                          }];
}

- (FormOrderRouter *)routerFormOrder{
    return [TyphoonDefinition withClass:[FormOrderRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewFormOrder]];
                          }];
}

@end

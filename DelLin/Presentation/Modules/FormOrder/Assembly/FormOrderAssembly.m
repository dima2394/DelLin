//
//  FormOrderAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <ViperMcFlurry/ViperMcFlurry.h>

#import "FormOrderAssembly.h"
#import "DVServicesAssembly.h"
#import "DVRoutesAssembly.h"

#import "FormOrderViewController.h"
#import "FormOrderInteractor.h"
#import "FormOrderPresenter.h"
#import "FormOrderRouter.h"

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
                              [definition injectProperty:@selector(networkService)
                                                    with:[self.servicesAssembly networkService]];
                              [definition injectProperty:@selector(storageService)
                                                    with:[self.servicesAssembly storageService]];
                          }];
}

- (FormOrderPresenter *)presenterFormOrder {
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

- (FormOrderRouter *)routerFormOrder {
    return [TyphoonDefinition withClass:[FormOrderRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewFormOrder]];
                              [definition injectProperty:@selector(terminalsRoute)
                                                    with:[self.routesAssembly terminalsRoute]];
                          }];
}

@end

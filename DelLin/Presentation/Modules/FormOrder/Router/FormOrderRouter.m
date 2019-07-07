//
//  FormOrderRouter.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <ViperMcFlurry/ViperMcFlurry.h>

#import "FormOrderRouter.h"
#import "DVTerminalsRoute.h"


@implementation FormOrderRouter

#pragma mark -  FormOrderRouterInput

- (void)openTerminalsModuleWithOutput:(id<RamblerViperModuleOutput>)output completion:(TransitionCompletionBlock)completion {
    RamblerViperOpenModulePromise *promise = [self.transitionHandler openModuleUsingFactory:self.terminalsRoute.moduleFactory withTransitionBlock:^(id<RamblerViperModuleTransitionHandlerProtocol> sourceModuleTransitionHandler, id<RamblerViperModuleTransitionHandlerProtocol> destinationModuleTransitionHandler) {
        UIViewController *sourceViewController = (id)sourceModuleTransitionHandler;
        UIViewController *destinationViewController = (id)destinationModuleTransitionHandler;
        [sourceViewController.navigationController presentViewController:destinationViewController animated:YES
                                                              completion:nil];
    }];

    [promise thenChainUsingBlock:^id<RamblerViperModuleOutput> (id<RamblerViperModuleInput> moduleInput) {
        completion(moduleInput);
        return output;
    }];
}

@end

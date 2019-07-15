//
//  FormOrderPresenter.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderPresenter.h"

#import "FormOrderViewInput.h"
#import "FormOrderInteractorInput.h"
#import "FormOrderRouterInput.h"

@implementation FormOrderPresenter

#pragma mark -  FormOrderModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark -  FormOrderViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];

    [self.interactor fetchTerminals];
}

- (void)didRequestNavigationWithFromSelection {
    [self.router openTerminalsModuleWithOutput:self completion:^(id<RamblerViperModuleInput> input) {
        NSLog(@"FROM");
    }];
}

- (void)didRequestNavigationWithToSelection {
    [self.router openTerminalsModuleWithOutput:self completion:^(id<RamblerViperModuleInput> input) {
        NSLog(@"FROM");
    }];
}

#pragma mark -  FormOrderInteractorOutput

- (void)fromOrderInteractorDidFinishFetchingTerminalsWith:(NSArray<DVCity *> *)cities {
    NSLog(@"");
}

- (void)fromOrderInteractorDidFinishFetchingTerminals {

}

- (void)fromOrderInteractorDidFinishFetchingTerminalsWithError:(NSError *)error {
    
}

@end

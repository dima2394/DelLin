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

#pragma mark - Методы FormOrderModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы FormOrderViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];

    [self.interactor fetchTerminals];
//    NSLog(@"");
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//    });
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


#pragma mark - Методы FormOrderInteractorOutput

@end

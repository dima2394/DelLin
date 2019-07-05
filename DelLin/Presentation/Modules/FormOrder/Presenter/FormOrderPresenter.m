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


    NSLog(@"");
}

#pragma mark - Методы FormOrderInteractorOutput

@end

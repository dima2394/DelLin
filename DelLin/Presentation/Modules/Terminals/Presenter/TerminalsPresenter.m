//
//  TerminalsPresenter.m
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "TerminalsPresenter.h"

#import "TerminalsViewInput.h"
#import "TerminalsInteractorInput.h"
#import "TerminalsRouterInput.h"

@implementation TerminalsPresenter

#pragma mark - Методы TerminalsModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы TerminalsViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы TerminalsInteractorOutput

@end

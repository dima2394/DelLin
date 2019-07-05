//
//  TerminalsPresenter.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "TerminalsViewOutput.h"
#import "TerminalsInteractorOutput.h"
#import "TerminalsModuleInput.h"

@protocol TerminalsViewInput;
@protocol TerminalsInteractorInput;
@protocol TerminalsRouterInput;

@interface TerminalsPresenter : NSObject <TerminalsModuleInput, TerminalsViewOutput, TerminalsInteractorOutput>

@property (nonatomic, weak) id<TerminalsViewInput> view;
@property (nonatomic, strong) id<TerminalsInteractorInput> interactor;
@property (nonatomic, strong) id<TerminalsRouterInput> router;

@end

//
//  FormOrderPresenter.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderViewOutput.h"
#import "FormOrderInteractorOutput.h"
#import "FormOrderModuleInput.h"

@protocol FormOrderViewInput;
@protocol FormOrderInteractorInput;
@protocol FormOrderRouterInput;

@interface FormOrderPresenter : NSObject <FormOrderModuleInput, FormOrderViewOutput, FormOrderInteractorOutput>

@property (nonatomic, weak) id<FormOrderViewInput> view;
@property (nonatomic, strong) id<FormOrderInteractorInput> interactor;
@property (nonatomic, strong) id<FormOrderRouterInput> router;

@end

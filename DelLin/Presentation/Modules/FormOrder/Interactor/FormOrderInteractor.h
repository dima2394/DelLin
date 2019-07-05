//
//  FormOrderInteractor.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderInteractorInput.h"

@protocol FormOrderInteractorOutput;
@protocol NetworkService;

@interface FormOrderInteractor : NSObject <FormOrderInteractorInput>

@property (nonatomic, weak) id<FormOrderInteractorOutput> output;
@property (nonatomic, weak) id<NetworkService> networkService;

@end

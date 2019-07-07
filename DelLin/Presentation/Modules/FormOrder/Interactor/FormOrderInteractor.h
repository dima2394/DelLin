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
@protocol StorageService;

@interface FormOrderInteractor : NSObject <FormOrderInteractorInput>

@property (nonatomic, weak) id<FormOrderInteractorOutput> output;
@property (nonatomic, strong) id<NetworkService> networkService;
@property (nonatomic, strong) id<StorageService> storageService;


@end

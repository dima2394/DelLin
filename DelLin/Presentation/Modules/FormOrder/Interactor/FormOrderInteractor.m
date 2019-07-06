//
//  FormOrderInteractor.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderInteractor.h"
#import "NetworkService.h"
#import "FormOrderInteractorOutput.h"

@implementation FormOrderInteractor

#pragma mark - Методы FormOrderInteractorInput

- (void)fetchTerminals {
    [_networkService fetchTerminalsWithCompletion:^(NSArray<DVCity *> * _Nullable cities, NSError * _Nullable error) {
        
    }];
}

@end

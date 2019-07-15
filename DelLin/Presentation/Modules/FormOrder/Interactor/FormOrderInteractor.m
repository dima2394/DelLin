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
#import "StorageService.h"
#import "DVCity.h"
#import "AppDelegate.h"

@implementation FormOrderInteractor

#pragma mark - Методы FormOrderInteractorInput

- (void)fetchTerminals {
    __weak FormOrderInteractor *weakSelf = self;

    [_networkService fetchTerminalsWithCompletion:^(NSArray<DVCity *> * _Nullable cities, NSError * _Nullable error) {
        __strong FormOrderInteractor *strongSelf = weakSelf;
        dispatch_async(dispatch_get_main_queue(), ^{
            // do work here
            for (DVCity *city in cities) {
                [strongSelf.storageService saveTerminalsWith:city.terminals];
            }
        });
//        if (error == nil) {
//            NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//            NSOperation *operation = [NSBlockOperation blockOperationWithBlock:^{
//            }];
//            [operation setCompletionBlock:^{
//                [strongSelf.output fromOrderInteractorDidFinishFetchingTerminals];
//            }];
//            [queue addOperation:operation];
//        } else {
//            [strongSelf.output fromOrderInteractorDidFinishFetchingTerminalsWithError:error];
//        }
    }];
}

@end

//
//  NetworkService.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@class DVCity;

typedef void (^TerminalsCompletion)(NSArray<DVCity *> * _Nullable cities, NSError * __nullable error);

@protocol NetworkService <NSObject>

- (void)fetchTerminalsWithCompletion:(TerminalsCompletion) completion;

@end

NS_ASSUME_NONNULL_END

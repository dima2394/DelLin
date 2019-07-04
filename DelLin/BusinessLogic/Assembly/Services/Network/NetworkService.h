//
//  NetworkService.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NetworkService <NSObject>

- (void)fetchTerminals;

@end

NS_ASSUME_NONNULL_END

//
//  FormOrderInteractorOutput.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DVCity;

@protocol FormOrderInteractorOutput <NSObject>

- (void)fromOrderInteractorDidFinishFetchingTerminals;
- (void)fromOrderInteractorDidFinishFetchingTerminalsWithError:(NSError *)error;

@end

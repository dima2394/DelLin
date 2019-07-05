//
//  FormOrderRouterInput.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RamblerViperModuleOutput;

typedef void (^TransitionCompletionBlock)(id<RamblerViperModuleInput> input);

@protocol FormOrderRouterInput <NSObject>

- (void)openTerminalsModuleWithOutput:(id<RamblerViperModuleOutput>)output
                        completion:(TransitionCompletionBlock)completion;

@end

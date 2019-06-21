//
//  FormOrderModuleInput.h
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol FormOrderModuleInput <RamblerViperModuleInput>

/**
 @author Dmitriy Verennik

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end

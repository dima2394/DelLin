//
//  TerminalsModuleInput.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol TerminalsModuleInput <RamblerViperModuleInput>

/**
 @author Dmitriy Verennik

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end

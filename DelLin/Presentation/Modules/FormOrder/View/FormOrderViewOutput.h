//
//  FormOrderViewOutput.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RamblerViperModuleOutput.h"

@protocol FormOrderViewOutput <NSObject, RamblerViperModuleOutput>

/**
 @author Dmitriy Verennik

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end

//
//  TerminalsViewOutput.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TerminalsViewOutput <NSObject>

/**
 @author Dmitriy Verennik

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end

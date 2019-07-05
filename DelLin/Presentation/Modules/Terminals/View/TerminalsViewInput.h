//
//  TerminalsViewInput.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TerminalsViewInput <NSObject>

/**
 @author Dmitriy Verennik

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end

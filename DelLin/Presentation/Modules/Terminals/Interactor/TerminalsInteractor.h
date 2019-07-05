//
//  TerminalsInteractor.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "TerminalsInteractorInput.h"

@protocol TerminalsInteractorOutput;

@interface TerminalsInteractor : NSObject <TerminalsInteractorInput>

@property (nonatomic, weak) id<TerminalsInteractorOutput> output;

@end

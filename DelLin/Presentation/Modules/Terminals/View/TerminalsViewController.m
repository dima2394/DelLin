//
//  TerminalsViewController.m
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "TerminalsViewController.h"

#import "TerminalsViewOutput.h"

@implementation TerminalsViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

    [self.view setBackgroundColor:[UIColor redColor]];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы TerminalsViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

@end

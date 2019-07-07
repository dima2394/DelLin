//
//  FormOrderViewController.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "FormOrderViewController.h"
#import "FormOrderViewOutput.h"
#import <Framer/Framer.h>

@implementation FormOrderViewController

#pragma mark -  Lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    [self.fromTextField installFrames:^(NUIFramer * _Nonnull maker) {
        maker.top(0).left(0);
        maker.width(200).height(60);
    }];

    [self.toTextField installFrames:^(NUIFramer * _Nonnull maker) {
        maker.top_to(self.fromTextField.nui_bottom, 10).left_to(self.fromTextField.nui_left, 1);
        maker.width_to(self.fromTextField.nui_width, 1).height_to(self.fromTextField.nui_height, 1);
    }];

    [self.textFieldContainerView installFrames:^(NUIFramer * _Nonnull maker) {
        maker.container();
        maker.super_centerX(0).super_centerY(0);
    }];

    [self.saveButton installFrames:^(NUIFramer * _Nonnull maker) {
        maker.width_to(self.fromTextField.nui_width, 0.5).centerX_to(self.fromTextField.nui_centerX, 0);
        maker.top_to(self.toTextField.nui_bottom, 10).height_to(self.fromTextField.nui_height, 1);
    }];
}

#pragma mark - Методы FormOrderViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    [self.view setBackgroundColor:[UIColor whiteColor]];

    self.textFieldContainerView = [UIView new];

    self.fromTextField = [UITextField new];
    [self.fromTextField setPlaceholder:@"Откуда"];
    [self.fromTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.fromTextField setDelegate:self];

    self.toTextField = [UITextField new];
    [self.toTextField setPlaceholder:@"Куда"];
    [self.toTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.toTextField setDelegate: self];

    self.saveButton = [UIButton new];
    [self.saveButton setTitle: @"Сохранить" forState: UIControlStateNormal];
    [self.saveButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.saveButton.layer setBorderWidth:1];
    [self.saveButton.layer setBorderColor:[UIColor blueColor].CGColor];
    [self.saveButton.layer setMasksToBounds:YES];
    [self.saveButton.layer setCornerRadius:5];
    [self.saveButton addTarget:self
                        action:@selector(saveButtonPressed)
              forControlEvents: UIControlEventTouchUpInside];

    [self.view addSubview:self.textFieldContainerView];
    [self.view addSubview:self.saveButton];

    [self.textFieldContainerView addSubview:self.fromTextField];
    [self.textFieldContainerView addSubview:self.toTextField];
}

#pragma mark -  Actions

- (void)saveButtonPressed {

}

#pragma mark -  UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if ([textField isEqual:self.fromTextField]) {
        [self.output didRequestNavigationWithFromSelection];
    }

    if ([textField isEqual:self.toTextField]) {
        [self.output didRequestNavigationWithToSelection];
    }

    return NO;
}

@end

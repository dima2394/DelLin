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

#pragma mark - Lifecycle

- (UITextField *)fromTextField {
    if (!_fromTextField) {
        _fromTextField = [UITextField new];
        _fromTextField.delegate = self;
    }
    return _fromTextField;
}

- (UITextField *)toTextField {
    if (!_toTextField) {
        _toTextField = [UITextField new];
        _toTextField.delegate = self;
    }
    return _toTextField;
}

- (UIButton *)saveButton {
    if (_saveButton) {
        _saveButton = [UIButton new];
        [_saveButton setTitle: @"Сохранить" forState: UIControlStateNormal];
        [_saveButton addTarget:self
                        action:@selector(saveButtonPressed)
              forControlEvents: UIControlEventTouchUpInside];
    }
    return _saveButton;
}

- (void)viewDidLoad {
	[super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];

	[self.output didTriggerViewReadyEvent];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    [self.fromTextField installFrames:^(NUIFramer * _Nonnull maker) {
        maker.width(100).height(100);
    }];

    [self.toTextField installFrames:^(NUIFramer * _Nonnull maker) {
        maker.container().super_centerX(0);
        maker.super_centerY(0);
    }];
}

#pragma mark - Методы FormOrderViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

#pragma mark -  Actions

- (void)saveButtonPressed {

}

#pragma mark -  UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {

}

- (void)textFieldDidEndEditing:(UITextField *)textField {

}

@end

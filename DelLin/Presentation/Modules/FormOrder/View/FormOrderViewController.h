//
//  FormOrderViewController.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

@import UIKit;

#import "UIView+Sugar.h"
#import "FormOrderViewInput.h"

@protocol FormOrderViewOutput;

@interface FormOrderViewController : UIViewController <FormOrderViewInput, UITextFieldDelegate>

@property (nonatomic, strong) id<FormOrderViewOutput> output;

@property (nonatomic, strong) UIView *textFieldContainerView;
@property (nonatomic, strong) UITextField *departureTextField;
@property (nonatomic, strong) UITextField *destinationTextField;
@property (nonatomic, strong) UIButton *saveButton;

@end

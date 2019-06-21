//
//  FormOrderViewController.h
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FormOrderViewInput.h"

@protocol FormOrderViewOutput;

@interface FormOrderViewController : UIViewController <FormOrderViewInput>

@property (nonatomic, strong) id<FormOrderViewOutput> output;

@end

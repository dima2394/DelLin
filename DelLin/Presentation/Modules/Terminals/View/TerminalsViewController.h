//
//  TerminalsViewController.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TerminalsViewInput.h"

@protocol TerminalsViewOutput;

@interface TerminalsViewController : UIViewController <TerminalsViewInput>

@property (nonatomic, strong) id<TerminalsViewOutput> output;

@end

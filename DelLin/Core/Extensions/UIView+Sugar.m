//
//  UIViewController+Sugar.m
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "UIView+Sugar.h"

@implementation UIView (Sugar)

-(void)addSubviews:(NSArray<UIView *> *)views {
    for (UIView *view in views) {
        [self addSubview:view];
    }
}

@end

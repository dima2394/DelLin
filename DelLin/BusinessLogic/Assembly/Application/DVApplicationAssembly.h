//
//  DVApplicationAssembly.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>
#import "TyphoonAssembly.h"
#import "AppDelegate.h"
#import "FormOrderAssembly.h"
#import "DVCoreComponentsAssembly.h"

NS_ASSUME_NONNULL_BEGIN

@interface DVApplicationAssembly : TyphoonAssembly <RamblerInitialAssembly>

@property (nonatomic, readonly) FormOrderAssembly *formOrderAssembly;
@property (nonatomic, readonly) DVCoreComponentsAssembly *coreComponentsAssembly;

- (AppDelegate *)appDelegate;
- (UINavigationController *)rootViewController;

@end

NS_ASSUME_NONNULL_END

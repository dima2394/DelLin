//
//  FormOrderAssembly.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

@class DVServicesAssembly;
@class DVRoutesAssembly;

/**
 @author Dmitriy Verennik

 FormOrder module
 */

@class FormOrderViewController;

@interface FormOrderAssembly : TyphoonAssembly <RamblerInitialAssembly>

@property (nonatomic, readonly) DVServicesAssembly *servicesAssembly;
@property (nonatomic, readonly) DVRoutesAssembly *routesAssembly;

- (FormOrderViewController *)viewFormOrder;

@end

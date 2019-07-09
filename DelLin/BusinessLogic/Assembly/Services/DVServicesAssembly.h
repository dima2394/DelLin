//
//  DVServicesAssembly.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import <RamblerTyphoonUtils/AssemblyCollector.h>
#import "TyphoonAssembly.h"
#import "CoreComponents.h"

@protocol NetworkService;
@protocol StorageService;
@class DVApplicationAssembly;

NS_ASSUME_NONNULL_BEGIN

@interface DVServicesAssembly : TyphoonAssembly <RamblerInitialAssembly>

@property (nonatomic, readonly) CoreComponents *coreComponentsAssembly;

- (id<NetworkService>)networkService;
- (id<StorageService>)storageService;

@end

NS_ASSUME_NONNULL_END

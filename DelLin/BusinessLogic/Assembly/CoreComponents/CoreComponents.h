//
//  CoreComponents.h
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "TyphoonAssembly.h"
#import <RamblerTyphoonUtils/AssemblyCollector.h>
@import CoreData;

NS_ASSUME_NONNULL_BEGIN

@interface CoreComponents : TyphoonAssembly <RamblerInitialAssembly>

- (NSPersistentContainer *)persistentContainer;

@end

NS_ASSUME_NONNULL_END

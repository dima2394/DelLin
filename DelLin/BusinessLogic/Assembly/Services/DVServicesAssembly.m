//
//  DVServicesAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVServicesAssembly.h"
#import "NetworkServiceImplementation.h"
#import "StorageServiceImplementation.h"
#import "AppDelegate.h"

@implementation DVServicesAssembly

- (id<NetworkService>)networkService {
    return [TyphoonDefinition withClass:[NetworkServiceImplementation class]];
}

- (id<StorageService>)storageService {
    return [TyphoonDefinition withClass:[StorageServiceImplementation class] configuration:^(TyphoonDefinition *definition) {
//        [definition injectProperty:@selector(persistentContainer) with:[self.coreComponentsAssembly persistentContainer]];
        [definition injectProperty:@selector(managedObjectContext) with:[self.coreComponentsAssembly mainManagedObjectContext]];
        [definition injectProperty:@selector(storeURL) with:[self.coreComponentsAssembly storeURL]];
        [definition injectProperty:@selector(modelURL) with:[self.coreComponentsAssembly modelURL]];
    }];
}


@end

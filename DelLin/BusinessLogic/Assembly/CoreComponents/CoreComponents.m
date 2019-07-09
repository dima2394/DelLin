//
//  CoreComponents.m
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "CoreComponents.h"

@implementation CoreComponents

- (NSPersistentContainer *)persistentContainer {
    return [TyphoonDefinition withClass: [NSPersistentContainer class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithName:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[NSString stringWithFormat:@"DelLin"]];
        }];
        [definition performAfterInjections:@selector(loadPersistentStoresWithCompletionHandler:) parameters:^(TyphoonMethod *params) {
            void (^loadPersistentStoresBlock)(NSPersistentStoreDescription *storeDescription, NSError *error) = ^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            };
            [params injectParameterWith:loadPersistentStoresBlock];
        }];
        definition.scope = TyphoonScopeLazySingleton;
    }];
}

@end

//
//  DVCoreComponentsAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVCoreComponentsAssembly.h"

@implementation DVCoreComponentsAssembly

- (NSManagedObjectModel *)managedObjectModel {
    return [TyphoonDefinition withClass:[NSManagedObjectModel class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithContentsOfURL:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:self.modelURL];
        }];
    }];
}

- (NSFileManager *)fileManager {
    return [TyphoonDefinition withClass:[NSFileManager class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(defaultManager)];
    }];
}

- (NSBundle *)mainBundle {
    return [TyphoonDefinition withClass:[NSBundle class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(mainBundle)];
    }];
}

- (NSArray *)applicationDocumentsDirectories {
    return [TyphoonDefinition withFactory:[self fileManager] selector:@selector(URLsForDirectory:inDomains:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:@(NSDocumentationDirectory)];
                                   [factoryMethod injectParameterWith:@(NSUserDomainMask)];
                               }];
}

- (id)applicationDocumentsDirectory {
    return [TyphoonDefinition withFactory:[self applicationDocumentsDirectories] selector:@selector(lastObject)];
}

- (NSURL *)storeURL {
    return [TyphoonDefinition withFactory:[self applicationDocumentsDirectory] selector:@selector(URLByAppendingPathComponent:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:@"coredata.sqlite"];
                               }];
}

- (NSURL *)modelURL {
    return [TyphoonDefinition withFactory:[self mainBundle] selector:@selector(URLForResource:withExtension:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:@"DelLin"];
                                   [factoryMethod injectParameterWith:@"momd"];
                               }];
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    return [TyphoonDefinition withClass:[NSPersistentStoreCoordinator class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithManagedObjectModel:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith: [self managedObjectModel]];
        }];

        [definition performAfterInjections:@selector(addPersistentStoreWithType:configuration:URL:options:error:) parameters:^(TyphoonMethod *params) {
            [params injectParameterWith:NSSQLiteStoreType];
            [params injectParameterWith:nil];
            [params injectParameterWith:[self storeURL]];
            [params injectParameterWith:@{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES}];
            [params injectParameterWith:nil];
        }];
    }];
}

- (NSManagedObjectContext *)managedObjectContext {
    return [TyphoonDefinition withClass:[NSManagedObjectContext class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithConcurrencyType:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@(NSMainQueueConcurrencyType)];
        }];
        [definition performAfterInjections:@selector(setPersistentStoreCoordinator:) parameters:^(TyphoonMethod *params) {
            [params injectParameterWith:self.persistentStoreCoordinator];
        }];
        definition.scope = TyphoonScopeLazySingleton;
    }];
}

@end

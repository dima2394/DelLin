//
//  DVCoreComponentsAssembly.m
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVCoreComponentsAssembly.h"

@implementation DVCoreComponentsAssembly

//- (NSManagedObjectModel *)managedObjectModel {
//    return [TyphoonDefinition withClass:[NSManagedObjectModel class] configuration:^(TyphoonDefinition *definition) {
//        [definition useInitializer:@selector(initWithContentsOfURL:) parameters:^(TyphoonMethod *initializer) {
//            [initializer injectParameterWith:self.modelURL];
//        }];
//    }];
//}
//
//- (NSFileManager *)fileManager {
//    return [TyphoonDefinition withClass:[NSFileManager class] configuration:^(TyphoonDefinition *definition) {
//        [definition useInitializer:@selector(defaultManager)];
//    }];
//}
//
//- (NSBundle *)mainBundle {
//    return [TyphoonDefinition withClass:[NSBundle class] configuration:^(TyphoonDefinition *definition) {
//        [definition useInitializer:@selector(mainBundle)];
//    }];
//}
//
//- (NSArray *)applicationDocumentsDirectories {
//    return [TyphoonDefinition withFactory:[self fileManager] selector:@selector(URLsForDirectory:inDomains:)
//                               parameters:^(TyphoonMethod *factoryMethod) {
//                                   [factoryMethod injectParameterWith:@(NSDocumentationDirectory)];
//                                   [factoryMethod injectParameterWith:@(NSUserDomainMask)];
//                               }];
//}
//
//- (id)applicationDocumentsDirectory {
//    return [TyphoonDefinition withFactory:[self applicationDocumentsDirectories] selector:@selector(lastObject)];
//}
//
//- (NSURL *)storeURL {
//    return [TyphoonDefinition withFactory:[self applicationDocumentsDirectory] selector:@selector(URLByAppendingPathComponent:)
//                               parameters:^(TyphoonMethod *factoryMethod) {
//                                   [factoryMethod injectParameterWith:@"coredata.sqlite"];
//                               }];
//}
//
//- (NSURL *)modelURL {
//    return [TyphoonDefinition withFactory:[self mainBundle] selector:@selector(URLForResource:withExtension:)
//                               parameters:^(TyphoonMethod *factoryMethod) {
//                                   [factoryMethod injectParameterWith:@"Model"];
//                                   [factoryMethod injectParameterWith:@"momd"];
//                               }];
//}
//
//- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
//    return [TyphoonDefinition withClass:[NSPersistentStoreCoordinator class] configuration:^(TyphoonDefinition *definition) {
//        [definition useInitializer:@selector(initWithManagedObjectModel:type:URL:options:) parameters:^(TyphoonMethod *initializer) {
//            [initializer injectParameterWith:self.managedObjectModel];
//            [initializer injectParameterWith:NSSQLiteStoreType];
//            [initializer injectParameterWith:self.storeURL];
//            [initializer injectParameterWith:nil];
//        }];
//    }];
//}
//
//- (NSManagedObjectContext *)managedObjectContext {
//    return [TyphoonDefinition withClass:[NSManagedObjectContext class] configuration:^(TyphoonDefinition *definition) {
//        [definition useInitializer:@selector(initWithConcurrencyType:parentContext:) parameters:^(TyphoonMethod *initializer) {
//            [initializer injectParameterWith:@(NSPrivateQueueConcurrencyType)];
//            [initializer injectParameterWith:self.mainManagedObjectContext];
//        }];
//    }];
//}
//
//- (NSManagedObjectContext *)mainManagedObjectContext {
//    return [TyphoonDefinition withClass:[NSManagedObjectContext class] configuration:^(TyphoonDefinition *definition) {
//        [definition useInitializer:@selector(initWithConcurrencyType:persistentStoreCoordinator:) parameters:^(TyphoonMethod *initializer) {
//            [initializer injectParameterWith:@(NSMainQueueConcurrencyType)];
//            [initializer injectParameterWith:self.persistentStoreCoordinator];
//        }];
//        definition.scope = TyphoonScopeLazySingleton;
//    }];
//}

- (NSManagedObjectContext *)mainManagedObjectContext
{
    return [TyphoonDefinition withClass:[NSManagedObjectContext class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithConcurrencyType:persistentStoreCoordinator:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@(NSMainQueueConcurrencyType)];
            [initializer injectParameterWith:self.persistentStoreCoordinator];
        }];
        definition.scope = TyphoonScopeLazySingleton;
    }];
}

- (NSManagedObjectContext *)managedObjectContext
{
    return [TyphoonDefinition withClass:[NSManagedObjectContext class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithConcurrencyType:parentContext:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@(NSPrivateQueueConcurrencyType)];
            [initializer injectParameterWith:self.mainManagedObjectContext];
        }];
    }];
}

#pragma mark - Persistent store coordinator

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    return [TyphoonDefinition withClass:[NSPersistentStoreCoordinator class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithManagedObjectModel:type:URL:options:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:self.managedObjectModel];
            [initializer injectParameterWith:NSSQLiteStoreType];
            [initializer injectParameterWith:self.storeURL];
            [initializer injectParameterWith:nil];
        }];
    }];
}

- (NSFileManager *)fileManager
{
    return [TyphoonDefinition withClass:[NSFileManager class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(defaultManager)];
    }];
}

- (NSArray *)applicationDocumentsDirectories
{
    return [TyphoonDefinition withFactory:[self fileManager] selector:@selector(URLsForDirectory:inDomains:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:@(NSDocumentDirectory)];
                                   [factoryMethod injectParameterWith:@(NSUserDomainMask)];
                               }];
}

- (id)applicationDocumentsDirectory
{
    return [TyphoonDefinition withFactory:[self applicationDocumentsDirectories] selector:@selector(lastObject)];
}

- (NSURL *)storeURL
{
    return [TyphoonDefinition withFactory:[self applicationDocumentsDirectory] selector:@selector(URLByAppendingPathComponent:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:@"coredata.sqlite"];
                               }];
}

#pragma mark - Managed object model

- (NSManagedObjectModel *)managedObjectModel
{
    return [TyphoonDefinition withClass:[NSManagedObjectModel class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithContentsOfURL:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:self.modelURL];
        }];
    }];
}

- (NSBundle *)mainBundle
{
    return [TyphoonDefinition withClass:[NSBundle class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(mainBundle)];
    }];
}

- (NSURL *)modelURL
{
    return [TyphoonDefinition withFactory:[self mainBundle] selector:@selector(URLForResource:withExtension:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:@"Model"];
                                   [factoryMethod injectParameterWith:@"momd"];
                               }];
}


@end

//
//  DVCoreData+DI.m
//  DelLin
//
//  Created by Dmitriy Verennik on 15/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVCoreData+DI.h"

@implementation NSManagedObjectContext (InjectedInitialization)

- (instancetype)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)type
             persistentStoreCoordinator:(NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    self = [self initWithConcurrencyType:type];
    if (self) {
        [self setPersistentStoreCoordinator:persistentStoreCoordinator];
    }
    return self;
}

- (instancetype)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)type parentContext:(NSManagedObjectContext *)parentContext
{
    self = [self initWithConcurrencyType:type];
    if (self) {
        self.parentContext = parentContext;
    }
    return self;
}

@end

@implementation NSPersistentStoreCoordinator (InjectedInitialization)

- (instancetype)initWithManagedObjectModel:(NSManagedObjectModel *)model type:(NSString *)type URL:(NSURL *)storeURL
                                   options:(NSDictionary *)options
{
    self = [self initWithManagedObjectModel:model];
    if (self) {
        [self addPersistentStoreWithType:type configuration:nil URL:storeURL options:options error:nil];
    }
    return self;
}

@end

//
//  DVCoreData+DI.h
//  DelLin
//
//  Created by Dmitriy Verennik on 15/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

@import Foundation;
@import CoreData;

@interface NSManagedObjectContext (InjectedInitialization)

- (instancetype)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)type
             persistentStoreCoordinator:(NSPersistentStoreCoordinator *)persistentStoreCoordinator;

- (instancetype)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)type parentContext:(NSManagedObjectContext *)parentContext;

@end

@interface NSPersistentStoreCoordinator (InjectedInitialization)

- (instancetype)initWithManagedObjectModel:(NSManagedObjectModel *)model type:(NSString *)type URL:(NSURL *)storeURL
                                   options:(NSDictionary *)options;

@end

//
//  DVCoreComponentsAssembly.h
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "TyphoonAssembly.h"
#import <RamblerTyphoonUtils/AssemblyCollector.h>
@import CoreData;

NS_ASSUME_NONNULL_BEGIN

@interface DVCoreComponentsAssembly : TyphoonAssembly <RamblerInitialAssembly>

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator;
//- (NSManagedObjectContext *)mainManagedObjectContext;
- (NSManagedObjectContext *)managedObjectContext;
- (NSArray *)applicationDocumentsDirectories;
- (NSManagedObjectModel *)managedObjectModel;
- (id)applicationDocumentsDirectory;
- (NSFileManager *)fileManager;
- (NSBundle *)mainBundle;
- (NSURL *)storeURL;
- (NSURL *)modelURL;

@end

NS_ASSUME_NONNULL_END

//
//  DVStorageServiceImplementation.h
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "StorageService.h"
@import CoreData;

NS_ASSUME_NONNULL_BEGIN

@interface StorageServiceImplementation : NSObject <StorageService>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSURL *storeURL;
@property (nonatomic, strong) NSURL *modelURL;

@end

NS_ASSUME_NONNULL_END

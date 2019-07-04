//
//  Terminal+CoreDataProperties.h
//  DelLin
//
//  Created by Dmitriy Verennik on 04/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//
//

#import "Terminal+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Terminal (CoreDataProperties)

+ (NSFetchRequest<Terminal *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *address;
@property (nonatomic) int32_t id;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isGiveoutCargo;
@property (nonatomic) BOOL isReceiveCargo;
@property (nonatomic) float latitude;
@property (nonatomic) float longtitude;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) Map *map;

@end

NS_ASSUME_NONNULL_END

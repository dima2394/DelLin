//
//  Terminal+CoreDataProperties.h
//  DelLin
//
//  Created by Dmitriy Verennik on 15/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//
//

#import "Terminal+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Terminal (CoreDataProperties)

+ (NSFetchRequest<Terminal *> *)fetchRequest;

@property (nonatomic) int32_t id;
@property (nullable, nonatomic, copy) NSString *address;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isGiveoutCargo;
@property (nonatomic) BOOL isReceiveCargo;
@property (nonatomic) float latitude;
@property (nonatomic) float longitude;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) Map *relationship;

@end

NS_ASSUME_NONNULL_END

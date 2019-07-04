//
//  Map+CoreDataProperties.h
//  DelLin
//
//  Created by Dmitriy Verennik on 04/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//
//

#import "Map+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Map (CoreDataProperties)

+ (NSFetchRequest<Map *> *)fetchRequest;

@property (nonatomic) float height;
@property (nonatomic) int32_t id;
@property (nullable, nonatomic, copy) NSURL *mapThumbnailURL;
@property (nonatomic) float width;

@end

NS_ASSUME_NONNULL_END

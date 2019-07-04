//
//  Map+CoreDataProperties.m
//  DelLin
//
//  Created by Dmitriy Verennik on 04/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//
//

#import "Map+CoreDataProperties.h"

@implementation Map (CoreDataProperties)

+ (NSFetchRequest<Map *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Map"];
}

@dynamic height;
@dynamic id;
@dynamic mapThumbnailURL;
@dynamic width;

@end

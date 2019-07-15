//
//  Terminal+CoreDataProperties.m
//  DelLin
//
//  Created by Dmitriy Verennik on 15/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//
//

#import "Terminal+CoreDataProperties.h"

@implementation Terminal (CoreDataProperties)

+ (NSFetchRequest<Terminal *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Terminal"];
}

@dynamic id;
@dynamic address;
@dynamic isDefault;
@dynamic isGiveoutCargo;
@dynamic isReceiveCargo;
@dynamic latitude;
@dynamic longitude;
@dynamic name;
@dynamic relationship;

@end

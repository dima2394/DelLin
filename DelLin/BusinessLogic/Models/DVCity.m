//
//  DVCity.m
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVCity.h"
#import "DVTerminal.h"

@implementation DVCity

+(EKObjectMapping *)objectMapping {

    EKObjectMapping *mapping = [[EKObjectMapping alloc] initWithObjectClass:[self class]];

    [mapping mapPropertiesFromArray:@[@"id",
                                      @"cityID",
                                      @"name",
                                      @"requestEndTime",
                                      @"sfrequestEndTime",
                                      ]];
//    [mapping mapKeyPath:@"id" toProperty:@"_id"]

    return mapping;
}

- (id)initWithProperties:(NSDictionary *)response {

    if (self = [super init]) {
        [EKMapper fillObject:self fromExternalRepresentation:response withMapping:[[self class] objectMapping]];
        if ([response.allKeys containsObject:@"terminals"]) {
            NSArray *terminalsArray = [response[@"terminals"] objectForKey:@"terminal"];
            self.terminals = [EKMapper arrayOfObjectsFromExternalRepresentation:terminalsArray withMapping:[DVTerminal objectMapping]];
        }
    }

    return self;
}

@end

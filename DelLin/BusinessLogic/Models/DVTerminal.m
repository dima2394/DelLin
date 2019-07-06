//
//  DVTerminal.m
//  DelLin
//
//  Created by Dmitriy Verennik on 04/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVTerminal.h"

@implementation DVTerminal


+ (nonnull EKObjectMapping *)objectMapping {
    EKObjectMapping *mapping = [[EKObjectMapping alloc] initWithObjectClass:[self class]];

    [mapping mapPropertiesFromArray:@[@"id",
                                      @"name",
                                      @"address",
                                      @"longitude",
                                      @"latitude",
                                      ]];
    [mapping mapKeyPath:@"default" toProperty:@"isDefault"];
    [mapping mapKeyPath:@"giveoutCargo" toProperty:@"isGiveoutCargo"];
    [mapping mapKeyPath:@"receiveCargo" toProperty:@"isReceiveCargo"];

    return mapping;
}

@end

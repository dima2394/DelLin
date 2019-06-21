//
//  DVCatalogEndpoint.m
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "DVTerminalsEndpoint.h"

@implementation DVTerminalsEndpoint

@synthesize baseURL;
@synthesize headers;
@synthesize path;
@synthesize parameters;

- (NSURL *)baseURL {
    return [NSURL URLWithString:@""];
}

- (NSString *)path {
    return @"";
}

- (NSDictionary *)headers {
    return [NSDictionary new];
}

- (NSDictionary *)parameters {
    return [NSDictionary new];
}

@end

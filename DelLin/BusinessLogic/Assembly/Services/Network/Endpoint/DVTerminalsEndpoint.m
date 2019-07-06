//
//  DVCatalogEndpoint.m
//  DelLin
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
@synthesize method;

- (NSURL *)baseURL {
    return [NSURL URLWithString:@"https://api.dellin.ru/static/catalog"];
}

- (NSString *)path {
    return @"terminals_v3.json";
}

- (NSDictionary *)headers {
    return nil;
}

- (NSDictionary *)parameters {
    return nil;
}

- (NSString *)method {
    return @"GET";
}


@end

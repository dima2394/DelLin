//
//  NetworkServiceImplementation.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 dverennik. All rights reserved.
//

#import "NetworkServiceImplementation.h"
#import "Endpoint/DVTerminalsEndpoint.h"
#import "AFHTTPSessionManager+Endpoint.h"
#import "DVCity.h"

@implementation NetworkServiceImplementation

- (void)fetchTerminals {
    DVTerminalsEndpoint *endpoint = [DVTerminalsEndpoint new];
   [[AFHTTPSessionManager manager] dataTaskForEndpoint:endpoint
                                               success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable response) {
                                                   NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:response
                                                                                                                options:NSJSONReadingMutableContainers error:nil];
                                                   NSMutableArray <DVCity *> *cities = [NSMutableArray new];
                                                   if ([responseJSON.allKeys containsObject:@"city"]) {
                                                       NSDictionary *citiesJSON = responseJSON[@"city"];
                                                       for (NSDictionary *cityJSON in citiesJSON) {
                                                           DVCity *city = [[DVCity alloc] initWithProperties:cityJSON];
                                                           [cities addObject:city];
                                                       }
                                                   }
                                                   NSLog(@"");
                                               } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                                                   NSLog(@"");
                                               }];
    
}

@end

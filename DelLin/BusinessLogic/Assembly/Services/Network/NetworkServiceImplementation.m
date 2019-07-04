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

@implementation NetworkServiceImplementation

- (void)fetchTerminals {
    DVTerminalsEndpoint *endpoint = [DVTerminalsEndpoint new];
   [[AFHTTPSessionManager manager] dataTaskForEndpoint:endpoint
                                               success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable response) {

                                               } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

                                               }];
    
}

@end

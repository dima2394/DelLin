//
//  AFHTTPSessionManager+AFHTTPSessionManager_Endpoint.h
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@protocol DVEndpointProtocol;

NS_ASSUME_NONNULL_BEGIN

@interface AFHTTPSessionManager (AFHTTPSessionManager_Endpoint)

- (NSURLSessionDataTask *)dataTaskForEndpoint:(id<DVEndpointProtocol>)endpoint
                                      success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable response))success
                                      failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

@end

NS_ASSUME_NONNULL_END

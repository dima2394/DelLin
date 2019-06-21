//
//  AFHTTPSessionManager+AFHTTPSessionManager_Endpoint.m
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "AFHTTPSessionManager+Endpoint.h"
#import "Endpoint/DVEndpointProtocol.h"

@implementation AFHTTPSessionManager (AFHTTPSessionManager_Endpoint)

- (NSURLSessionDataTask *)dataTaskForEndpoint:(id<DVEndpointProtocol>)endpoint success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {


    NSURL *requestURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@", endpoint.baseURL, endpoint.path]];
    return [[AFHTTPSessionManager manager] dataTaskWithHTTPMethod:endpoint.method
                                                        URLString: requestURL.absoluteString
                                                       parameters:endpoint.parameters
                                                   uploadProgress:nil
                                                 downloadProgress:nil
                                                          success:success
                                                          failure:failure];

}

- (NSURLSessionDataTask *)dataTaskWithHTTPMethod:(NSString *)method
                                       URLString:(NSString *)URLString
                                      parameters:(id)parameters
                                  uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgress
                                downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgress
                                         success:(void (^)(NSURLSessionDataTask *, id))success
                                         failure:(void (^)(NSURLSessionDataTask *, NSError *))failure
{
    NSError *serializationError = nil;
    NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:method URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString] parameters:parameters error:&serializationError];
    if (serializationError) {
        if (failure) {
            dispatch_async(self.completionQueue ?: dispatch_get_main_queue(), ^{
                failure(nil, serializationError);
            });
        }

        return nil;
    }

    __block NSURLSessionDataTask *dataTask = nil;
    dataTask = [self dataTaskWithRequest:request
                          uploadProgress:uploadProgress
                        downloadProgress:downloadProgress
                       completionHandler:^(NSURLResponse * __unused response, id responseObject, NSError *error) {
                           if (error) {
                               if (failure) {
                                   failure(dataTask, error);
                               }
                           } else {
                               if (success) {
                                   success(dataTask, responseObject);
                               }
                           }
                       }];

    return dataTask;
}



@end

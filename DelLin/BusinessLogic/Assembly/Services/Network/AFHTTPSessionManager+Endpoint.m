//
//  AFHTTPSessionManager+AFHTTPSessionManager_Endpoint.m
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "AFHTTPSessionManager+Endpoint.h"
#import "Endpoint/DVEndpointProtocol.h"

@implementation AFHTTPSessionManager (AFHTTPSessionManager_Endpoint)

- (NSURLSessionDataTask *)dataTaskForEndpoint:(id<DVEndpointProtocol>)endpoint
                                      success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success
                                      failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {

    AFHTTPSessionManager *manager = [[AFHTTPSessionManager manager] initWithBaseURL:endpoint.baseURL];
    AFHTTPResponseSerializer *requestSerializer = [AFHTTPResponseSerializer serializer];
    requestSerializer.acceptableContentTypes = [NSSet setWithObject:@"binary/octet-stream"];
    manager.responseSerializer = requestSerializer;

    NSURLSessionDataTask *dataTask = [manager dataTaskWithHTTPMethod:endpoint.method
                                                           URLString:endpoint.path
                                                          parameters:endpoint.parameters
                                                      uploadProgress:nil
                                                    downloadProgress:nil
                                                             success:success
                                                             failure:failure];
    [dataTask resume];

    return dataTask;
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

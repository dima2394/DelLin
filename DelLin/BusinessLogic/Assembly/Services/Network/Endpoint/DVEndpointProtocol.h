//
//  DVEndpoint.h
//  DelLin
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DVEndpointProtocol <NSObject>

@property(nonatomic, nonnull) NSURL *baseURL;
@property(nonatomic, nonnull) NSString *path;
@property(nonatomic, nullable) NSDictionary *headers;
@property(nonatomic, nullable) NSDictionary *parameters;
@property(nonatomic, nonnull) NSString *method;

@end

NS_ASSUME_NONNULL_END

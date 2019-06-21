//
//  DVEndpoint.h
//  DelLinTest
//
//  Created by Dmitriy Verennik on 21/06/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DVEndpointProtocol <NSObject>

@property(nonatomic) NSURL *baseURL;
@property(nonatomic) NSString *path;
@property(nonatomic) NSDictionary *headers;
@property(nonatomic) NSDictionary *parameters;
@property(nonatomic) NSString *method;

@end

NS_ASSUME_NONNULL_END

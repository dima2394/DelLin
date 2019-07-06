//
//  DVTerminal.h
//  DelLin
//
//  Created by Dmitriy Verennik on 04/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DVMap.h"
#import <EasyMapping.h>

NS_ASSUME_NONNULL_BEGIN

@interface DVTerminal : NSObject <EKMappingProtocol>

+ (EKObjectMapping *)objectMapping;

@property (assign) NSInteger id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (assign) float latitude;
@property (assign) float longitude;
@property (nonatomic) BOOL isReceiveCargo;
@property (nonatomic) BOOL isGiveoutCargo;
@property (nonatomic) BOOL isDefault;
@property (assign) DVMap *map;

@end

NS_ASSUME_NONNULL_END

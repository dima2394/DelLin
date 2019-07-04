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

@interface DVTerminal : NSObject <EKManagedMappingProtocol>

@property (assign) NSInteger id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (assign) float latitude;
@property (assign) float longtitude;
@property (assign) BOOL isReceiveCargo;
@property (assign) BOOL isGiveoutCargo;
@property (assign) BOOL isDefault;
@property (nonatomic, strong) DVMap *map;

@end

NS_ASSUME_NONNULL_END

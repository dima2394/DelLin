//
//  DVCity.h
//  DelLin
//
//  Created by Dmitriy Verennik on 06/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

@import Foundation;
#import <EasyMapping.h>

NS_ASSUME_NONNULL_BEGIN

@class DVTerminal;

@interface DVCity : NSObject

- (id)initWithProperties:(NSDictionary *)response;

@property (nonatomic) NSString *id;
@property (nonatomic, strong) NSString *cityID;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *requestEndTime;
@property (nonatomic, strong) NSString *sfrequestEndTime;
@property (nonatomic, strong) NSArray <DVTerminal *> *terminals;

@end

NS_ASSUME_NONNULL_END

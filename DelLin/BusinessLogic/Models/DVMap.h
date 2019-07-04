//
//  DVMap.h
//  DelLin
//
//  Created by Dmitriy Verennik on 04/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface DVMap : NSObject

@property (nonatomic, strong) NSURL *mapThumbnailURL;
@property (assign) CGFloat width;
@property (assign) CGFloat height;

@end

NS_ASSUME_NONNULL_END

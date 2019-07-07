//
//  DVStorageService.h
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

@import Foundation;

@class DVTerminal;

@protocol StorageService <NSObject>

- (void)saveTerminalsWith:(NSArray<DVTerminal *> *)terminals;

@end

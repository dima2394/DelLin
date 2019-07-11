//
//  DVStorageServiceImplementation.m
//  DelLin
//
//  Created by Dmitriy Verennik on 08/07/2019.
//  Copyright © 2019 Dmitriy Verennik. All rights reserved.
//

#import "StorageServiceImplementation.h"
#import "Terminal+CoreDataClass.h"
#import "DVTerminal.h"

@implementation StorageServiceImplementation

- (void)saveTerminalsWith:(NSArray<DVTerminal *> *)terminals {
    NSError *error;
    for (DVTerminal *terminal in terminals) {
        Terminal *savingTerminal = [NSEntityDescription insertNewObjectForEntityForName:@"Terminal" inManagedObjectContext:self.managedObjectContext];
        savingTerminal.id = (int)terminal.id;
        savingTerminal.name = terminal.name;
        savingTerminal.address = terminal.address;
        savingTerminal.latitude = terminal.latitude;
        savingTerminal.longtitude = terminal.longitude;
        savingTerminal.isReceiveCargo = terminal.isReceiveCargo;
        savingTerminal.isDefault = terminal.isDefault;
        savingTerminal.isGiveoutCargo = terminal.isGiveoutCargo;
        [self.managedObjectContext insertObject:savingTerminal];
        [self.managedObjectContext save:&error];
    }
}

- (NSArray<Terminal *> *)fetchFromTerminals {
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Terminal"];
    NSArray<Terminal *> *terminals = [[self.managedObjectContext executeFetchRequest:request error:nil] mutableCopy];
    return terminals;
}

@end

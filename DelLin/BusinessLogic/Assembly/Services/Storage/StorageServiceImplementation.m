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
        Terminal *terminalToSave = [NSEntityDescription insertNewObjectForEntityForName:@"Terminal" inManagedObjectContext:self.managedObjectContext];
        terminalToSave.id = (int)terminal.id;
        terminalToSave.name = terminal.name;
        terminalToSave.address = terminal.address;
        terminalToSave.latitude = terminal.latitude;
        terminalToSave.longitude = terminal.longitude;
        terminalToSave.isReceiveCargo = terminal.isReceiveCargo;
        terminalToSave.isDefault = terminal.isDefault;
        terminalToSave.isGiveoutCargo = terminal.isGiveoutCargo;
        if (terminalToSave != nil) {
            [self.managedObjectContext insertObject:terminalToSave];
            [self.managedObjectContext save:&error];
        }
    }
}

- (NSArray<Terminal *> *)fetchFromTerminals {
    NSFetchRequest *request = [Terminal fetchRequest];
    NSString *stringPredicate = [NSString stringWithFormat:@"isDefault == YES AND isGiveoutCargo == YES"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat: stringPredicate];
    request.predicate = predicate;
    NSArray<Terminal *> *terminals = [[self.managedObjectContext executeFetchRequest:request error:nil] mutableCopy];
    return terminals;
}

- (NSArray<Terminal *> *)fetchDestinationTerminals {
    NSFetchRequest *request = [Terminal fetchRequest];
    NSString *stringPredicate = [NSString stringWithFormat:@"isReceiveCargo == YES"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat: stringPredicate];
    request.predicate = predicate;
    NSArray<Terminal *> *terminals = [[self.managedObjectContext executeFetchRequest:request error:nil] mutableCopy];
    return terminals;
}

@end

//
//  _CustomIntegration.m
//  Rudder_Example
//
//  Created by Abhishek Pandey on 09/08/21.
//  Copyright © 2021 arnabp92. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Rudder/Rudder.h>
#import "CustomIntegration.h"

@implementation CustomIntegration

- (instancetype) initWithConfig:(NSDictionary *)config withAnalytics:(RSClient *)client {
    if (self == [super init]) {
        NSLog(@"Custom Integration: Instace is being initialised.");
    }
    return self;
}

- (void) processRuderEvent:(nonnull RSMessage *)message {
    NSString *type = message.type;
    if ([type isEqualToString:@"identify"]) {
        NSLog(@"Custom Integration: Identify event is being called.");
    } else if ([type isEqualToString:@"track"]) {
        NSLog(@"Custom Integration: Track event is being called.");
    } else if ([type isEqualToString:@"screen"]) {
        NSLog(@"Custom Integration: Screen event is being called.");
    } else if ([type isEqualToString:@"group"]) {
        NSLog(@"Custom Integration: Group event is being called.");
    } else if ([type isEqualToString:@"alias"]) {
        NSLog(@"Custom Integration: Alias event is being called.");
    } else {
        [RSLogger logWarn:@"MessageType is not supported"];
    }
}

- (void) dump:(nonnull RSMessage *)message {
    [self processRuderEvent:message];
}

- (void) reset {
    NSLog(@"Custom Integration: Reset is received");
}

- (void) flush {
    NSLog(@"Custom Integration: flush is received");
}

@end

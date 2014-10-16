//
//  HelperProcess.m
//  HelperProcess
//
//  Created by Devarshi Kulshreshtha on 10/10/14.
//  Copyright (c) 2014 Devarshi Kulshreshtha. All rights reserved.
//

#import "HelperProcess.h"

@implementation HelperProcess

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)upperCaseString:(NSString *)aString withReply:(void (^)(NSString *))reply {
    NSString *response = [aString uppercaseString];
    reply(response);
}

@end

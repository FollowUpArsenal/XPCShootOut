//
//  HelperProcess.h
//  HelperProcess
//
//  Created by Devarshi Kulshreshtha on 10/10/14.
//  Copyright (c) 2014 Devarshi Kulshreshtha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HelperProcessProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
@interface HelperProcess : NSObject <HelperProcessProtocol>
@end

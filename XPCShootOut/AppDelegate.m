//
//  AppDelegate.m
//  XPCShootOut
//
//  Created by Devarshi Kulshreshtha on 10/10/14.
//  Copyright (c) 2014 Devarshi Kulshreshtha. All rights reserved.
//

#import "AppDelegate.h"
#import "HelperProcessProtocol.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong, atomic) NSXPCConnection *connectionToService;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    _connectionToService = [[NSXPCConnection alloc] initWithServiceName:@"HelperProcess"];
    _connectionToService.remoteObjectInterface = [NSXPCInterface interfaceWithProtocol:@protocol(HelperProcessProtocol)];
    [_connectionToService resume];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
- (IBAction)doSomethingAction:(id)sender {
    [[_connectionToService remoteObjectProxy] upperCaseString:@"hello" withReply:^(NSString *aString) {
        // We have received a response. Update our text field, but do it on the main thread.
        NSLog(@"### Result string was: %@ ###", aString);
    }];
}

@end

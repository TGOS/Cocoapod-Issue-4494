
#import <Foundation/Foundation.h>
#import "XPC_C.h"

@interface ServiceDelegate : NSObject <NSXPCListenerDelegate>
@end

@implementation ServiceDelegate

- (BOOL)listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)newConnection {
    newConnection.exportedInterface = [NSXPCInterface interfaceWithProtocol:@protocol(XPC_CProtocol)];
    XPC_C * exportedObject = [XPC_C new];
    newConnection.exportedObject = exportedObject;
    [newConnection resume];
    return YES;
}

@end

int main(int argc, const char *argv[]) {
    ServiceDelegate *delegate = [ServiceDelegate new];
    NSXPCListener *listener = [NSXPCListener serviceListener];
    listener.delegate = delegate;
    [listener resume];
    return 0;
}

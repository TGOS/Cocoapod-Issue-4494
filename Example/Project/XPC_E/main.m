
#import <Foundation/Foundation.h>
#import "XPC_E.h"

@interface ServiceDelegate : NSObject <NSXPCListenerDelegate>
@end

@implementation ServiceDelegate

- (BOOL)listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)newConnection {
    newConnection.exportedInterface = [NSXPCInterface interfaceWithProtocol:@protocol(XPC_EProtocol)];
    XPC_E * exportedObject = [XPC_E new];
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

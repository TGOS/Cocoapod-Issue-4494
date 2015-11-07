
#import "XPC_E.h"
#import <XPC_Helper/XPC_Helper.h>
#import <Cocoa/Cocoa.h>

@implementation XPC_E

- (void)sayHelloViaXPC {
	[PrintHelloWord printHelloWord];
	NSAlert * alert = [NSAlert alertWithError:
		[NSError errorWithDomain:NSPOSIXErrorDomain code:EINVAL userInfo:nil]
	];
	[alert runModal];
}

@end

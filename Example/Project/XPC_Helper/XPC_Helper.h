
#ifdef __OBJC__

#	import <Foundation/Foundation.h>

	FOUNDATION_EXPORT double XPC_HelperVersionNumber;
	FOUNDATION_EXPORT const unsigned char XPC_HelperVersionString[];

// In this header, you should import all the public headers of your framework
// using statements like #import <XPC_Helper/PublicHeader.h>

#	import <XPC_Helper/PrintHelloWord.h>
#	import <XPC_Helper/PrintHelloWorldInC.h>

#else

#	include <XPC_Helper/PrintHelloWorldInC.h>

#endif
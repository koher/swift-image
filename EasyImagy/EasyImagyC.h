#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

FOUNDATION_EXPORT void EasyImagyReleaseBuffer(void *info, const void *data, size_t size);
FOUNDATION_EXPORT CGDataProviderRef EasyImageCreateDataProvider(void *data, size_t size);

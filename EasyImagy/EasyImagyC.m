#import "EasyImagyC.h"

void EasyImagyReleaseBuffer(void *info, const void *data, size_t size) {
	free(info);
}

CGDataProviderRef EasyImageCreateDataProvider(void *data, size_t size) {
	return CGDataProviderCreateWithData(data, data, size, EasyImagyReleaseBuffer);
}
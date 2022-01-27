#import "Epubviewer2Plugin.h"
#if __has_include(<epubviewer2/epubviewer2-Swift.h>)
#import <epubviewer2/epubviewer2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "epubviewer2-Swift.h"
#endif

@implementation Epubviewer2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEpubviewer2Plugin registerWithRegistrar:registrar];
}
@end

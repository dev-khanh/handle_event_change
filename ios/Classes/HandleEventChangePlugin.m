#import "HandleEventChangePlugin.h"
#if __has_include(<handle_event_change/handle_event_change-Swift.h>)
#import <handle_event_change/handle_event_change-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "handle_event_change-Swift.h"
#endif

@implementation HandleEventChangePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHandleEventChangePlugin registerWithRegistrar:registrar];
}
@end

//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<countdown_flutter/CountdownFlutterPlugin.h>)
#import <countdown_flutter/CountdownFlutterPlugin.h>
#else
@import countdown_flutter;
#endif

#if __has_include(<flashy_tab_bar/FlashyTabBarPlugin.h>)
#import <flashy_tab_bar/FlashyTabBarPlugin.h>
#else
@import flashy_tab_bar;
#endif

#if __has_include(<url_launcher_ios/FLTURLLauncherPlugin.h>)
#import <url_launcher_ios/FLTURLLauncherPlugin.h>
#else
@import url_launcher_ios;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [CountdownFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"CountdownFlutterPlugin"]];
  [FlashyTabBarPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlashyTabBarPlugin"]];
  [FLTURLLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTURLLauncherPlugin"]];
}

@end

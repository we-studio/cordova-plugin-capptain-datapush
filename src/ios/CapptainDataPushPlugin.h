#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CapptainDataPushPlugin : CDVPlugin

- (void)initialize:(CDVInvokedUrlCommand *)command;
- (void)sendTestStringDataPush:(CDVInvokedUrlCommand *)command;

@end

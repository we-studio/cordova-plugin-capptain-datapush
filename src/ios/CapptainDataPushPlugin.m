#import "CapptainDataPushPlugin.h"
#import "Capptain.h"

@interface CapptainDataPushPlugin () <CPReachDataPushDelegate>

@end

@implementation CapptainDataPushPlugin

- (void)initialize:(CDVInvokedUrlCommand *)command
{
    CPReachModule *reachModule = [[CapptainAgent shared] getModule:@"ReachModule"];
    [reachModule setDataPushDelegate:self];

    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)sendTestStringDataPush:(CDVInvokedUrlCommand *)command
{
    NSDictionary *options = [command.arguments objectAtIndex:0];
    NSString *category = [options objectForKey:@"category"];
    NSString *body = [options objectForKey:@"body"];

    [self didReceiveStringDataPushWithCategory:category body:body];

    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

#pragma mark - CPReachDataPushDelegate

- (BOOL)didReceiveStringDataPushWithCategory:(NSString *)category
                                        body:(NSString *)body
{
    NSString *cmdJS = [NSString stringWithFormat:@"window.CapptainDataPushPlugin.onReceiveStringDataPush(\"%@\", \"%@\")", category, body];
    [self.commandDelegate evalJs:cmdJS];
    return YES;
}

- (BOOL)didReceiveBase64DataPushWithCategory:(NSString *)category
                                 decodedBody:(NSData *)decodedBody
                                 encodedBody:(NSString *)encodedBody
{
    NSString *cmdJS = [NSString stringWithFormat:@"window.CapptainDataPushPlugin.onReceiveBase64DataPush(\"%@\", \"%@\")", category, encodedBody];
    [self.commandDelegate evalJs:cmdJS];
    return YES;
}

@end
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(MotorBridgeReactNative, NSObject)

RCT_EXTERN_METHOD(createAccount:
                  (NSString)password
                  resolve:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject);

RCT_EXTERN_METHOD(checkBridge:
                  (NSString)data
                  resolve:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject);

RCT_EXTERN_METHOD(loginAccount:
                  (NSString)did
                  password: (NSString)password
                  dscKey: (NSDictionary)dscKey
                  pskKey: (NSDictionary)pskKey
                  resolve:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject);

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end

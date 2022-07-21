import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'motor-bridge-react-native' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const MotorBridgeReactNative = NativeModules.MotorBridgeReactNative
  ? NativeModules.MotorBridgeReactNative
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function createAccount(password: string): Promise<any> {
  return MotorBridgeReactNative.createAccount(password);
}

export function loginAccount(
  did: string,
  password: string,
  dscKey: any,
  pskKey: any
): Promise<any> {
  return MotorBridgeReactNative.loginAccount(did, password, dscKey, pskKey);
}

export function checkBridge(data: string): Promise<string> {
  return MotorBridgeReactNative.checkBridge(data);
}

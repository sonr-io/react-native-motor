import Foundation
// import MotorKit

@objc(MotorBridgeReactNative)
class MotorBridgeReactNative: NSObject {

    @objc func checkBridge(
      _ data : String,
      resolve: @escaping RCTPromiseResolveBlock,
      rejecter reject: @escaping RCTPromiseRejectBlock
    ) -> Void {
      resolve(data)
    }

     @objc func createAccount(
       _ password : String,
       resolve: @escaping RCTPromiseResolveBlock,
       rejecter reject: @escaping RCTPromiseRejectBlock
     ) -> Void {
      //  let motor = MotorKit()
      //  let account = motor.createAccount(password: password)

      //  resolve(account)
      resolve("account")
     }

     @objc func loginAccount(
       _ did : String,
       password : String?,
       dscKey: Data?,
       pskKey: Data?,
       resolve: @escaping RCTPromiseResolveBlock,
       rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
      //  let motor = MotorKit()
      //  let isLoggedIn = motor.loginAccount(did: did, password: password, dscKey: dscKey, pskKey: pskKey)

      //  resolve(isLoggedIn)
      resolve("isLoggedId")
     }
}

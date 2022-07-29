# motor-bridge-react-native

This repo was made to serve as a bridge between native modules for iOS and Android. With it, you gain access to native capabilities. Here the bridge is made to compile [motorkit](https://github.com/sonr-io/MotorKit) and it could be used on projects like [Beam](https://github.com/sonr-io/beam-react-native) or [sonr-ui-components](https://github.com/sonr-io/react-native-ui-components) 

## Installation

Run yarn v1 command.

```sh
yarn
```

## Usage

Check example folder to work with it running locally

```js
import { checkBridge } from "motor-bridge-react-native";

// ...

const result = await checkBridge("the brigde is working!");
```

This code can also be used on the next repository where you want to use this bridge. First, you need to publish to npm. Once imported, you just need to link this code with your project, running the command:

```sh
react-native link motor-bridge-react-native #or your npm published name
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## Know Issues

If it fails on MotorKit dependencies and you want to run it locally because of cocoapods, remove it to test. Like this commit [link](https://github.com/sonr-io/motor-bridge-react-native/commit/f112a38163022f9d7008db78ea7330b0a01c9e89)

## Reference

Follow web articles describing how to create a native module for ios, like this one

[link](https://medium.com/wix-engineering/creating-a-native-module-in-react-native-93bab0123e46)

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)

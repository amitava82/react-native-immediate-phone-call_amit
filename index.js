import { NativeModules } from "react-native";

var RNReactNativeImmediatePhoneCallSrijan = {
  immediatePhoneCall: function (number) {
    NativeModules.RNReactNativeImmediatePhoneCallSrijan.immediatePhoneCall(
      number
    );
  },
};

export default RNReactNativeImmediatePhoneCallSrijan;

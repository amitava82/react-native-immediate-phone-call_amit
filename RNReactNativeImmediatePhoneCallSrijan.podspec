
Pod::Spec.new do |s|
  s.name         = "RNReactNativeImmediatePhoneCallSrijan"
  s.version      = "2.0.0"
  s.summary      = "RNReactNativeImmediatePhoneCallSrijan"
  s.description  = "Initiate immediate phone call (without further user interaction) for React Native on iOS and Android."
  s.homepage     = "https://github.com/amitava82/react-native-immediate-phone-call_amit"
  s.license      = "MIT"
  s.author             = { "author" => "atinder" }
  s.platform     = :ios, "13.0"
  s.source       = { :git => "https://github.com/amitava82/react-native-immediate-phone-call_amit", :tag => "main" }
  s.source_files  = "RNReactNativeImmediatePhoneCallSrijan/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"

end

  


Pod::Spec.new do |s|
  s.name         = "RNReactNativeImmediatePhoneCallSrijan"
  s.version      = "1.0.3"
  s.summary      = "RNReactNativeImmediatePhoneCallSrijan"
  s.description  = "Initiate immediate phone call (without further user interaction) for React Native on iOS and Android."
  s.homepage     = "https://github.com/atinderSingh11/react-native-immediate-phone-call_srijan"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "atinder" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/atinderSingh11/react-native-immediate-phone-call_srijan", :tag => "master" }
  s.source_files  = "RNReactNativeImmediatePhoneCallSrijan/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  

Pod::Spec.new do |s|
  s.name         = "RNReactNativeImmediatePhoneCallSrijan"
  s.version      = "1.0.0"
  s.summary      = "RNReactNativeImmediatePhoneCallSrijan"
  s.description  = <<-DESC
                  RNReactNativeImmediatePhoneCallSrijan
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/atinderSingh11/react-native-immediate-phone-call_srijan", :tag => "master" }
  s.source_files  = "RNReactNativeImmediatePhoneCallSrijan/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
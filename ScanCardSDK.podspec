Pod::Spec.new do |spec|

  spec.name         = "ScanCardSDK"
  spec.version      = "1.0.6"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
  This CocoaPods library helps you scan card
                   DESC

  spec.homepage     = "https://github.com/cuonglv0688/ScanCard.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "cuonglv" => "cuonglv0688@gmail.com" }
  spec.source        = { :git => "https://github.com/cuonglv0688/ScanCard.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'ScanCardSDK.xcframework'
  spec.platform = :ios
  spec.swift_version = "5.0"
  spec.ios.deployment_target  = '12.0'
  spec.dependency "QKMRZScanner", '3.0.0'
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework AVFoundation' }
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

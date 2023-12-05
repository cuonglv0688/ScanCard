Pod::Spec.new do |spec|

  spec.name         = "ScanCardSDK"
  spec.version      = "1.0.21"
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
  spec.dependency "QKMRZParser", "~> 2.0.0"
  spec.dependency "SwiftyTesseract", "~> 3.1.3"
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework AVFoundation -weak_framework Foundation -weak_framework UIKit -weak_framework CoreImage -weak_framework AudioToolbox'}

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/gini/gini-podspecs.git'
install! 'cocoapods', :disable_input_output_paths => true

# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

use_frameworks!
inhibit_all_warnings!
def used_pods
  pod 'IDnowSDK', '5.0.3'
  pod 'SQLCipher', '4.4.2'
  pod 'SQLite.swift/SQLCipher', :git => 'https://github.com/Domivat/SQLite.swift.git', :commit => 'cf8558cee18842835e001c618cae15f4818f2c75'
  pod 'GiniVision', '5.6.5'
  pod 'Gini/DocumentsAPI', '0.5.3'
  pod 'SVProgressHUD', '2.2.5'
  pod 'OpenCV2', '~> 3.4.1'
end

target 'IDNowTest' do
 used_pods

  post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '5.3'
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
        if config.name == 'Debug'
          config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
        end
      end
end
end
end

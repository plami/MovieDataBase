# Uncomment this line to define a global platform for your project
 platform :ios, '10.0'

target 'MovieDatabase' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MovieDatabase

pod 'Alamofire', '~> 4.0'
pod 'HanekeSwift',
:git => 'https://github.com/Haneke/HanekeSwift.git',
:branch => 'feature/swift-3'

  target 'MovieDatabaseTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end

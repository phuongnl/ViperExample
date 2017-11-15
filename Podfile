# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

target 'ViperExample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!
  
  project 'ViperExample.xcodeproj'

  # Pods for ViperExample
  pod 'Spring', :git => 'https://github.com/MengTo/Spring.git', :branch => 'swift3'
  
  target 'ViperExampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ViperExampleUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '3.2'
      end
  end
end

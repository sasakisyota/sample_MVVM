# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'sample_MVVM' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for sample_MVVM
  
    pod 'RxSwift', '6.5.0'
    pod 'RxCocoa', '6.5.0'
    
    post_install do |installer|
      installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
          config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
        end
      end
    end
    
  target 'sample_MVVMTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'RxBlocking', '6.5.0'
    pod 'RxTest', '6.5.0'
  end

  target 'sample_MVVMUITests' do
    # Pods for testing
  end

end

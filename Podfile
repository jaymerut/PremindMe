# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!
workspace 'PremindMe'

def core_pods
  pod 'SnapKit'
end

def application_pods
  core_pods
end

target 'Core do
  core_pods
end

target 'PremindMe' do
  # Comment the next line if you don't want to use dynamic frameworks

  application_pods
  
  target 'PremindMeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PremindMeUITests' do
    # Pods for testing
  end

end

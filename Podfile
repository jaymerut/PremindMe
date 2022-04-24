# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!
workspace 'PremindMe'

def core_pods
  pod 'SnapKit'
  pod 'R.swift'
  pod 'Sourcery'
end

def feature_home_pods
  pod 'IGListKit'
  core_pods
end

def application_pods
  pod 'IGListKit'
  core_pods
end

target 'Core' do
  project 'Core/Core.project'
  core_pods
end

target 'FeatureHome' do
  project 'FeatureHome/FeatureHome.project'
  feature_home_pods
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

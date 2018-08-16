#
# Be sure to run `pod lib lint DependencyExample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DependencyExample'
  s.version          = '1.0'
  s.summary          = 'A short description of DependencyExample.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#  s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                       DESC

  s.homepage         = 'https://github.com/hefgi/DependencyExample'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hefgi' => 'fj@waver.co' }
  s.source           = { :git => 'https://github.com/hefgi/DependencyExample.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hefgi'

  s.ios.deployment_target = '10.0'

  s.source_files = 'DependencyExample/Classes/**/*.{swift}'
  
  s.resource_bundles = {
    'DependencyExample' => ['DependencyExample/Assets/**/*.{storyboard,xib,xcassets}']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end

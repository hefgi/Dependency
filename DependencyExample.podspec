Pod::Spec.new do |s|
  s.name             = "DependencyExample"
  s.version          = "1.0"
  s.summary          = "A simple dependency project in Swift"
  s.description      = "Proof of concept : How can we add a dependency to a core app."
  s.homepage         = "https://github.com/hefgi/DependencyExample"
  s.license          = 'Code is MIT'
  s.author           = { "Francois-Julien Alcaraz" => "fj@waver.co" }
  s.source           = { :git => "https://github.com/hefgi/DependencyExample.git", :tag => s.version }
  s.social_media_url = 'https://twitter.com/hefgi'

  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.swift_version = '4.0'

  s.source_files = 'DependencyExample/*'

  s.frameworks = 'UIKit', 'Foundation'
  s.module_name = 'DependencyExample'
end

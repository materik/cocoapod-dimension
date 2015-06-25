Pod::Spec.new do |s|
  s.name           = "MEViewExtensions"
  s.version        = "0.1.0"
  s.summary        = "Extensions for UIKit objects for easier access of frame properties"
  s.homepage       = "https://github/materik/meviewextensions.git"
  s.license        = "MIT"
  s.author         = { "Mattias Eriksson" => "thematerik@gmail.com" }
  s.platform       = :ios
  s.source         = { :git => "https://github/materik/meviewextensions.git", :tag => "0.1.0" }
  s.source_files   = "*.swift"
  s.exclude_files  = "test"
  s.framework      = "UIKit"
end

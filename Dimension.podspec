Pod::Spec.new do |s|
  s.name           = "Dimension"
  s.version        = "0.3.0"
  s.summary        = "Extensions for UIKit objects for easier access of frame properties"
  s.homepage       = "https://github.com/materik/dimension.git"
  s.license        = { :type => "MIT", :file => "LICENSE.md" }
  s.author         = { "Mattias Eriksson" => "thematerik@gmail.com" }
  s.platform       = :ios, 8.0
  s.source         = { :git => "https://github.com/materik/dimension.git", :tag => "0.3.0" }
  s.source_files   = "*.swift"
  s.exclude_files  = "test"
  s.framework      = "UIKit"
end

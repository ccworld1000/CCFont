Pod::Spec.new do |s|
  s.name         = "HSFont"
  s.version      = "1.2.1"
  s.summary      = "A simple iOS and OS X HSFont replace [UIFont, NSFont], HSColor replace [UIColor, NSColor]"
  s.homepage     = "https://github.com/ccworld1000"
  s.license      = "MIT"
  s.author             = { "cc" => "ccworld1000@gmail.com" }
  s.social_media_url   = "https://github.com/ccworld1000"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.source       = { :git => "https://github.com/ccworld1000/HSFont.git", :tag => s.version }
  s.source_files  = "HSFont", "HSFont/*.{h,m,c}"
  s.exclude_files = "Classes/Exclude"
  s.ios.framework  = "UIKit"
  s.osx.framework  = "AppKit"
  s.requires_arc = true

end


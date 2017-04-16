Pod::Spec.new do |s|
  s.name         = "HSFont"
  s.version      = "2.0.2"
  s.summary      = "A simple iOS and OS X HSFont replace [UIFont, NSFont], HSColor replace [UIColor, NSColor]. HSFont 简单支持 machosx 与 iOS, 可以简单取代 NSFont 或者 UIFont. HSColor 单支持 machosx 与 iOS, 可以简单取代 NSColor 或者 UIColor 十六进制字符串."
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


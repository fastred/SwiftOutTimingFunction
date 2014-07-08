Pod::Spec.new do |s|
  s.name             = "SwiftOutTimingFunction"
  s.version          = "1.0"
  s.summary          = "Google's new 'Swift Out' animation curve on iOS."
  s.homepage         = "https://github.com/fastred/SwiftOutTimingFunction"
  s.license          = 'MIT'
  s.author           = { "Arkadiusz Holko" => "fastred@fastred.org" }
  s.source           = { :git => "https://github.com/fastred/SwiftOutTimingFunction.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.public_header_files = 'Classes/*.h'
end
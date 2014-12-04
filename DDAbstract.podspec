Pod::Spec.new do |s|
  s.name         = 'DDAbstract'
  s.version      = '1.0.2'
  s.summary      = 'Abstract ViewController and View, used as a base for all screens in an app.'

  s.homepage     = 'https://github.com/DeloitteDigital/DDAbstract'
  s.authors      = 'Bradley Clayton', 'Hadi Michael'
  s.social_media_url   = "http://twitter.com/deloittedigi_au"

  s.license      = { :type => 'BSD-3-Clause', :file => 'LICENSE' }

  s.source       = { :git => 'https://github.com/DeloitteDigital/DDAbstract.git', :tag => s.version.to_s }
  s.source_files = 'DDAbstract', 'DDAbstract/**/*.{h,m}'
  s.framework    = 'UIKit'

  s.requires_arc = true
  s.ios.deployment_target = "6.0"
end

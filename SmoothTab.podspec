Pod::Spec.new do |s|
s.name             = 'SmoothTab'
s.version          = '1.0.1'
s.summary          = 'Smooth customizabled tabs for iOS apps.'

s.homepage         = 'https://github.com/yervandsar/SmoothTab'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Yervand Saribekyan' => 'yervandsar@gmail.com' }
s.source           = { :git => 'https://github.com/yervandsar/SmoothTab.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.source_files = 'SmoothTab/Classes/*'

end

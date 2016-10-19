#
# Be sure to run `pod lib lint ProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = 'ProgressHUD'
  s.version = '1.0.1'
  s.summary = 'ProgressHUD wrap lib with quick usage and style settings.'
  s.description = <<-DESC
ProgressHUD wrap lib with quick usage and style settings.
                       DESC

  s.homepage = 'https://luoyu.space/hub'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Luo Yu' => 'indie.luo@gmail.com' }
  s.source = { :git => 'http://192.168.7.2:8081/r/hacomp/ProgressHUD.git', :tag => s.version.to_s }
  s.social_media_url = 'https://weibo.com/blodely'

  s.ios.deployment_target = '9.3'

  s.source_files = 'ProgressHUD/Classes/**/*', 'ProgressHUD/Configurations/*.plist'
  
  # s.resource_bundles = {
  #   'ProgressHUD' => ['ProgressHUD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.frameworks = 'UIKit'

  s.dependency 'SVProgressHUD', '~> 2.0.3'
  s.dependency 'FCFileManager', '~> 1.0.18'

end

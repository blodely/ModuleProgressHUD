#
# Be sure to run `pod lib lint ModuleProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
# Created by Luo Yu
#

Pod::Spec.new do |s|
	s.name = 'ModuleProgressHUD'
	s.version = '1.0.9'
	s.summary = 'Module ProgressHUD wrap lib with quick usage and style settings.'

	s.description      = <<-DESC
ProgressHUD wrap lib with quick usage and style settings.
1. SVProgressHUD
2. MBProgressHUD(removed for now)
3. Min-OS version iOS 7.0
						DESC

	s.homepage         = 'https://github.com/blodely/ModuleProgressHUD'
	s.license          = { :type => 'MIT', :file => 'LICENSE' }
	s.author           = { 'Luo Yu' => 'indie.luo@gmail.com' }
	s.source           = { :git => 'https://github.com/blodely/ModuleProgressHUD.git', :tag => s.version.to_s }
	s.social_media_url = 'https://weibo.com/blodely'

	s.ios.deployment_target = '7.0'

	s.source_files = 'ModuleProgressHUD/Classes/**/*', 'ModuleProgressHUD/Configurations/*.plist'

	s.resource_bundles = {
		'ModuleProgressHUD' => ['ModuleProgressHUD/Assets/*.png']
	}

	# s.public_header_files = 'Pod/Classes/**/*.h'

	s.ios.frameworks = 'UIKit'

	s.dependency 'SVProgressHUD', '~> 2.1.2'
	s.dependency 'FCFileManager', '~> 1.0.18'

end

#
# Be sure to run `pod lib lint ModuleProgressHUD.podspec' to ensure this.
# Created by Luo Yu
#

Pod::Spec.new do |s|
	s.name = 'ModuleProgressHUD'
	s.version = '1.13.0'
	s.summary = 'Module ProgressHUD wrap lib with quick usage and style settings.'

	s.description      = <<-DESC
ProgressHUD wrap lib with quick usage and style settings.
1. SVProgressHUD
2. MBProgressHUD(removed for now)
3. Min-OS version iOS: 1.0.x=iOS7; 1.12.x=Xcode12.iOS9; 1.13.x=Xcode13.iOS11
						DESC

	s.homepage         = 'https://github.com/blodely/ModuleProgressHUD'
	s.license          = { :type => 'MIT', :file => 'LICENSE' }
	s.author           = { 'Luo Yu' => 'indie.luo@gmail.com' }
	s.source           = { :git => 'https://github.com/blodely/ModuleProgressHUD.git', :tag => s.version.to_s }
	s.social_media_url = 'https://weibo.com/blodely'

	s.ios.deployment_target = '11.0'

	s.source_files = 'ModuleProgressHUD/Classes/**/*'

	s.resources = 'ModuleProgressHUD/Configurations/*.plist'
	
	s.resource_bundles = {
		'ModuleProgressHUD' => ['ModuleProgressHUD/Assets/*.png']
	}

	# s.public_header_files = 'Pod/Classes/**/*.h'

	s.ios.frameworks = 'UIKit'

	s.dependency 'LYCategory', '~> 1.13' # 1.13.x support Xcode13.iOS11
	s.dependency 'SVProgressHUD', '~> 2.2.5'
	s.dependency 'MBProgressHUD', '~> 1.2.0'

end

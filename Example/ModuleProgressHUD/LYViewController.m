//
//  LYViewController.m
//  ModuleProgressHUD
//
//  Created by 骆昱 on 10/11/2016.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2013~2018 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "LYViewController.h"
#import <ModuleProgressHUD/ModuleProgressHUD.h>

@interface LYViewController () {
	
	__weak IBOutlet UIButton *btnBgc;
	__weak IBOutlet UIButton *btnHud;
	__weak IBOutlet UIButton *btnSwitchStyle;
}
	
	@end

@implementation LYViewController
	
	// MARK: ACTIONS
	
- (IBAction)changeBgColor:(id)sender {
	
	if ([self.view.backgroundColor isEqual:[UIColor whiteColor]]) {
		self.view.backgroundColor = [UIColor blackColor];
	} else {
		self.view.backgroundColor = [UIColor whiteColor];
	}
}
	
- (IBAction)showHUD:(id)sender {
	[SVProgressHUD showSuccessWithFormatStatus:@"%@", @"bla bla bla bla bla\nbla bla bla"];
	
//	[SVProgressHUD showProgressHideAfter:2];
}
	
- (IBAction)switchStyle:(id)sender {
	
	[[SVProgressHUD appearance] setDefaultStyle:[SVProgressHUD appearance].defaultStyle == SVProgressHUDStyleDark ? SVProgressHUDStyleLight : SVProgressHUDStyleDark];
	
	[SVProgressHUD showSuccessWithStatus:@"style changed"];
}

- (IBAction)showNetworkingError:(id)sender {
	[SVProgressHUD showErrorNetworkFailure];
	
	[MBProgressHUD performSelector:@selector(showErrorNetworkFailure) withObject:nil afterDelay:2];
}

- (IBAction)showHint:(id)sender {
	[MBProgressHUD showHintAtBottomWithFormat:@"这是一条消息"];
}

- (IBAction)showMBSuccess:(id)sender {
	[MBProgressHUD showSuccessWithFormat:@"成功啦"];
}

- (IBAction)showMBSuccessWithTwoLabels:(id)sender {
	[MBProgressHUD showSuccessWithTitle:@"成功消息" subtitle:@"被你发现啦"];
}
	
// MARK: VIEW LIFE CYCLE
	
- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	btnBgc.layer.masksToBounds = btnHud.layer.masksToBounds = btnSwitchStyle.layer.masksToBounds = YES;
	btnBgc.layer.cornerRadius = btnHud.layer.cornerRadius = btnSwitchStyle.layer.cornerRadius = 6;
	
	[ModuleProgressHUD autoConfigure];
}
	
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
	
	@end

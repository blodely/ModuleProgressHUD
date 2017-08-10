//
//  LYViewController.m
//  ModuleProgressHUD
//
//  Created by 骆昱 on 10/11/2016.
//  Copyright (c) 2016 骆昱. All rights reserved.
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

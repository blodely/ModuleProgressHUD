//
//  LYViewController.m
//  ProgressHUD
//
//  Created by 骆昱 on 10/11/2016.
//  Copyright (c) 2016 骆昱. All rights reserved.
//

#import "LYViewController.h"
#import "ProgressHUD.h"

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
}

- (IBAction)switchStyle:(id)sender {
	
}

// MARK: VIEW LIFE CYCLE

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	btnBgc.layer.masksToBounds = btnHud.layer.masksToBounds = YES;
	btnBgc.layer.cornerRadius = btnHud.layer.cornerRadius = 6;

	[ProgressHUD autoConfigure];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

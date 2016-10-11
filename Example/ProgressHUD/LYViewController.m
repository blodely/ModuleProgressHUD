//
//  LYViewController.m
//  ProgressHUD
//
//  Created by 骆昱 on 10/11/2016.
//  Copyright (c) 2016 骆昱. All rights reserved.
//

#import "LYViewController.h"
#import "ProgressHUD.h"

@interface LYViewController ()

@end

@implementation LYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//	[SVProgressHUD show];
	[SVProgressHUD tryToShowErrorWithFormatStatus:@"%@", @1];
	
	[SVProgressHUD showSuccessWithFormatStatus:@"%@", @2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

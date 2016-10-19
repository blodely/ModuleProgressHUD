//
//  ProgressHUD.m
//  Pods
//
//  CREATED BY LUO Yu ON 2016-10-11.
//  COPYRIGHT (C) 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import "ProgressHUD.h"
#import "FCFileManager.h"

NSString *const LIB_PROGRESSHUD_BUNDLE_ID = @"org.cocoapods.ProgressHUD";
NSString *const NAME_CONF_PROGRESS_HUD = @"conf-progress-hud"; // SHOUND NOT BE CHANGED

@implementation ProgressHUD

+ (void)autoConfigure {
	
	NSString *confpath;
	
	confpath = [[NSBundle mainBundle] pathForResource:NAME_CONF_PROGRESS_HUD ofType:@"plist"];
	
	if (confpath == nil || [confpath isEqualToString:@""] == YES || [FCFileManager isFileItemAtPath:confpath] == NO) {
		
		NSLog(@"ProgressHUD WARNING\n\tAPP CONFIGURATION FILE WAS NOT FOUND.\n\t%@", confpath);
		
		// FALLBACK TO LIB DEFAULT
		confpath = [[NSBundle bundleWithIdentifier:LIB_PROGRESSHUD_BUNDLE_ID] pathForResource:NAME_CONF_PROGRESS_HUD ofType:@"plist"];
	}
	
	// TRY TO READ APP CONFIGURATION
	NSDictionary *conf = [FCFileManager readFileAtPathAsDictionary:confpath];
	
	if (conf == nil) {
		NSLog(@"ProgressHUD ERROR\n\tCONFIGURATION FILE WAS NEVER FOUND.");
	}
	
	NSLog(@"%@", conf);
	
}

@end

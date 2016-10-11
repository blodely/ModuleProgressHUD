//
//  SVProgressHUD+Additional.m
//  LUO YU
//
//  CREATED BY LUO Yu ON 2013-07-23.
//  COPYRIGHT (C) 2013 LUO YU. ALL RIGHTS RESERVED.
//

#import "SVProgressHUD+Additions.h"

@implementation SVProgressHUD (Additions)

// SHOW ERROR STATUS WITH A STRING USING C PRINTF-STYLE FORMATTING
+ (void)showErrorWithFormatStatus:(NSString *)format, ... {
	
	va_list args;
	id ret;
	
	va_start(args, format);
	if (format == nil) {
		ret = nil;
	} else {
		ret = [[NSString alloc] initWithFormat:format arguments:args];
	}
	
	va_end(args);
	
	if (ret != nil) {
		[SVProgressHUD showErrorWithStatus:ret];
	} else {
		[SVProgressHUD showErrorWithStatus:@""];
	}
}

// SHOW SUCCESS STATUS WITH A STRING USING C PRINTG-STYLE FORMATTING
+ (void)showSuccessWithFormatStatus:(NSString *)format, ... {
	
	va_list args;
	id ret;
	
	va_start(args, format);
	if (format == nil) {
		ret = nil;
	} else {
		ret = [[NSString alloc] initWithFormat:format arguments:args];
	}
	
	va_end(args);
	
	if (ret != nil) {
		[SVProgressHUD showSuccessWithStatus:ret];
	} else {
		[SVProgressHUD showSuccessWithStatus:@""];
	}
	
}

// SHOW HUD WHEN IT'S VISIBLE
+ (void)tryToShowErrorWithFormatStatus:(NSString *)format, ... {
	
	va_list args;
	id ret;
	
	va_start(args, format);
	if (format == nil) {
		ret = nil;
	} else {
		ret = [[NSString alloc] initWithFormat:format arguments:args];
	}
	
	va_end(args);
	
	if (ret != nil && [SVProgressHUD isVisible]) {
		[SVProgressHUD showErrorWithStatus:ret];
	} else if ([SVProgressHUD isVisible]) {
		[SVProgressHUD showErrorWithStatus:@""];
	} else {
		// DO NOTHING
	}
	
}

@end

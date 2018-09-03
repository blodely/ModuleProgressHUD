//
//  LYAppDelegate.m
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

#import "LYAppDelegate.h"
#import <ModuleProgressHUD/ModuleProgressHUD.h>

@implementation LYAppDelegate
	
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	// OVERRIDE POINT FOR CUSTOMIZATION AFTER APPLICATION LAUNCH.
	return YES;
}
	
- (void)applicationWillResignActive:(UIApplication *)application {
	
	// SENT WHEN THE APPLICATION IS ABOUT TO MOVE FROM ACTIVE TO INACTIVE STATE.
	// THIS CAN OCCUR FOR CERTAIN TYPES OF TEMPORARY INTERRUPTIONS
	// (SUCH AS AN INCOMING PHONE CALL OR SMS MESSAGE) OR WHEN THE USER QUITS THE APPLICATION
	// AND IT BEGINS THE TRANSITION TO THE BACKGROUND STATE.
	
	// USE THIS METHOD TO PAUSE ONGOING TASKS, DISABLE TIMERS,
	// AND THROTTLE DOWN OPENGL ES FRAME RATES.
	// GAMES SHOULD USE THIS METHOD TO PAUSE THE GAME.
}
	
- (void)applicationDidEnterBackground:(UIApplication *)application {
	
	// USE THIS METHOD TO RELEASE SHARED RESOURCES, SAVE USER DATA, INVALIDATE TIMERS,
	// AND STORE ENOUGH APPLICATION STATE INFORMATION TO RESTORE YOUR APPLICATION
	// TO ITS CURRENT STATE IN CASE IT IS TERMINATED LATER.
	
	// IF YOUR APPLICATION SUPPORTS BACKGROUND EXECUTION,
	// THIS METHOD IS CALLED INSTEAD OF applicationWillTerminate: WHEN THE USER QUITS.
}
	
- (void)applicationWillEnterForeground:(UIApplication *)application {
	
	// CALLED AS PART OF THE TRANSITION FROM THE BACKGROUND TO THE INACTIVE STATE;
	// HERE YOU CAN UNDO MANY OF THE CHANGES MADE ON ENTERING THE BACKGROUND.
}
	
- (void)applicationDidBecomeActive:(UIApplication *)application {
	
	// RESTART ANY TASKS THAT WERE PAUSED (OR NOT YET STARTED) WHILE THE APPLICATION WAS INACTIVE.
	// IF THE APPLICATION WAS PREVIOUSLY IN THE BACKGROUND, OPTIONALLY REFRESH THE USER INTERFACE.
}
	
- (void)applicationWillTerminate:(UIApplication *)application {
	
	// CALLED WHEN THE APPLICATION IS ABOUT TO TERMINATE.
	// SAVE DATA IF APPROPRIATE.
	// SEE ALSO applicationDidEnterBackground:.
}
	
	@end

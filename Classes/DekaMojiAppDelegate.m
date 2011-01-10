//
//  DekaMojiAppDelegate.m
//  DekaMoji
//
//  Created by Koichiro,Sumi on 09/07/22.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "DekaMojiAppDelegate.h"
#import "MainViewController.h"

@implementation DekaMojiAppDelegate


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end

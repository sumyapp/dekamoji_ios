//
//  DekaMojiAppDelegate-iPad.m
//  DekaMoji
//
//  Created by sumy on 10/05/31.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DekaMojiAppDelegate-iPad.h"
#import "MainViewController-iPad.h"

@implementation DekaMojiAppDelegate_iPad


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    [window addSubview:mainViewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end

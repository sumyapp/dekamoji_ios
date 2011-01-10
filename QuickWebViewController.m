//
//  QuickWebViewController.m
//  ComicOnline
//
//  Created by sumy on 10/03/02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "QuickWebViewController.h"


@implementation QuickWebViewController
@synthesize urlString;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/
- (IBAction)closeThisView{
	[self dismissModalViewControllerAnimated:YES];
}
- (IBAction)openSafari{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	if (urlString == nil) {
		[self closeThisView];
		return;
	}
}
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	if ([[UIDevice currentDevice].model isEqualToString:@"iPad"]) {
		return YES;
	}
	else {
		return (interfaceOrientation == UIInterfaceOrientationPortrait);
	}
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	[self dismissModalViewControllerAnimated:YES];
	[urlString release];
}

- (void)dealloc {
	//NSLog(@"quickwebview dealloc");
	[urlString release];
    [super dealloc];
}


@end

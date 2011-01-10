//
//  MainViewController.m
//  DekaMoji
//
//  Created by Koichiro,Sumi on 09/07/22.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

@implementation MainViewController

- (void)startAd:(NSString*)url{
	lwebview = [[YieldMakerView alloc]initWithFrame:CGRectMake(0,410,320,50)];
	[lwebview setUrl:url];
	[lwebview start];
	[self.view addSubview:lwebview];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
	 [super viewDidLoad];
	 
	 [self startAd:@"http://images.ad-maker.info/apps/dekamoji.html"];

	 
	 [self loadDefaultSettings];	 
	 [inp becomeFirstResponder];

	 
	 //fontLabel = [[FontLabel alloc] initWithFrame:CGRectMake(0, 48, 480, 363) fontName:@"ipaexm" pointSize:300];
	 if (minchoOn) {
		 fontLabel = [[FontLabel alloc] initWithFrame:CGRectMake(-5, 59, 325, 338) fontName:@"ipamp" pointSize:300];
	 }
	 else {
		 fontLabel = [[UILabel alloc] initWithFrame:CGRectMake(-5, 59, 325, 338)];
		 fontLabel.font = [UIFont systemFontOfSize:300];
	 }

	 fontLabel.textColor = [UIColor blackColor];
	 fontLabel.adjustsFontSizeToFitWidth = YES;
	 fontLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
	 //[fontLabel sizeToFit];
	 fontLabel.backgroundColor = nil;
	 fontLabel.opaque = NO;
	 [self.view addSubview:fontLabel];
	 [fontLabel release];
//	 oup.font = [UIFont fontWithName:@"IPAMincho" size:20];
//	 oup2.font = [UIFont fontWithName:@"IPAMincho" size:20];
	 
	 [self changeBackColor:backColor];
	 [self changeTextColor:textColor];
}



/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */
- (void)loadDefaultSettings {
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	NSDictionary* defaultsDic = [NSDictionary dictionaryWithObjectsAndKeys:
								 [ NSNumber numberWithInt:0], @"backColor",
								 [ NSNumber numberWithInt:1], @"textColor",
								 [ NSNumber numberWithInt:YES], @"minchoOn",
								 nil ];
	[defaults registerDefaults:defaultsDic];

	
	//	history[0].text = [defaults stringForKey:@"username"];
	backColor = [defaults integerForKey:@"backColor"];
	textColor = [defaults integerForKey:@"textColor"];
	minchoOn = [defaults integerForKey:@"minchoOn"];
}
- (void)saveDefaultSettings {
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	[defaults setInteger:backColor forKey:@"backColor"];
	[defaults setInteger:textColor forKey:@"textColor"];
	[defaults setInteger:minchoOn forKey:@"minchoOn"];
}
- (void)addHistory {
//	[defaults setObject:username forKey:@"username"];
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	[defaults setObject:[defaults stringForKey:@"h3"] forKey:@"h4"];
	[defaults setObject:[defaults stringForKey:@"h2"] forKey:@"h3"];
	[defaults setObject:[defaults stringForKey:@"h1"] forKey:@"h2"];
	[defaults setObject:[defaults stringForKey:@"h0"] forKey:@"h1"];
	[defaults setObject:[inp text] forKey:@"h0"];
}
- (void)changeBackColor:(int)colornum {
	switch(colornum) {
		case 0:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"1.jpg"]];
			break;
		case 1:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"2.jpg"]];
			break;
		case 2:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"3.jpg"]];
			break;
		case 3:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"4.jpg"]];
			break;
		case 4:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"5.jpg"]];
			break;
		case 5:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"6.jpg"]];
			break;
		case 6:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"7.jpg"]];
			break;
		case 7:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"8.jpg"]];
			break;
		case 8:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"9.jpg"]];
			break;
		case 9:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"10.jpg"]];
			break;
		default:
			self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"1.jpg"]];
			break;
	}	
}
- (void)changeTextColor:(int)colornum {
	switch(colornum) {
		case 0:
			fontLabel.textColor = [UIColor greenColor];
			break;
		case 1:
			fontLabel.textColor = [UIColor blackColor];
			break;
		case 2:
			fontLabel.textColor = [UIColor whiteColor];
			break;
		case 3:
			fontLabel.textColor = [UIColor blueColor];
			break;
		case 4:
			fontLabel.textColor = [UIColor redColor];
			break;
		case 5:
			fontLabel.textColor = [UIColor purpleColor];
			break;
		case 6:
			fontLabel.textColor = [UIColor magentaColor];
			break;
		case 7:
			fontLabel.textColor = [UIColor yellowColor];
			break;
		case 8:
			fontLabel.textColor = [UIColor grayColor];
			break;
		case 9:
			fontLabel.textColor = [UIColor cyanColor];
			break;
		default:
			fontLabel.textColor = [UIColor blackColor];
			break;
	}	
}
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
	[self dismissModalViewControllerAnimated:YES];
	backColor = [controller backColorGet];
	[self changeBackColor:backColor];
	textColor = [controller textColorGet];
	[self changeTextColor:textColor];
	minchoOn = [controller minchoOnGet];
	[self saveDefaultSettings];
	
	
	if([controller histGet] != nil) {
		inp.text = [controller histGet];
		fontLabel.text = [controller histGet];
	}
}

- (IBAction)end1:(id)sender {
	[inp resignFirstResponder];
	fontLabel.text = [inp text];
	[self addHistory];
}

- (IBAction)in1:(id)sender {
	[inp resignFirstResponder];
	fontLabel.text = [inp text];
	[self addHistory];
}

- (IBAction)showInfo {
	NSLog(@"%d",[[lwebview webView] isLoading]);
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}




 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
	 if (interfaceOrientation != UIInterfaceOrientationPortrait && interfaceOrientation != UIDeviceOrientationPortraitUpsideDown) {//縦向きじゃないとき
		 fontLabel.frame = CGRectMake(-5, 52, 480, 248);
		 //oup.text = [inp text];
		 //oup2.text = @"";
	 }
	 else {//縦向き
		 fontLabel.frame = CGRectMake(-5, 59, 325, 338);
		 //oup2.text = [inp text];
		 //oup.text = @"";
	 }
 return (YES);
 }

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

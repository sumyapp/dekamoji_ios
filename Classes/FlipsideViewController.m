//
//  FlipsideViewController.m
//  DekaMoji
//
//  Created by Koichiro,Sumi on 09/07/22.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "FlipsideViewController.h"
#import "QuickWebViewController.h"

@implementation FlipsideViewController

@synthesize delegate;

- (IBAction)useMinchoSwitchChange:(id)sender{
	UIAlertView *alert = [[UIAlertView alloc]  
						  initWithTitle:@""  
						message:@"本設定の適用にはアプリケーションの再起動が必要です。ご了承下さい。"  
						  delegate:nil  
						  cancelButtonTitle:@"閉じる"  
						  otherButtonTitles:nil];  
	[alert show];  
	[alert release];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
//	self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)ipafontButton:(id)sender{
	QuickWebViewController* qwview = [[[QuickWebViewController alloc] initWithNibName:@"QuickWebViewController" bundle:nil] autorelease];
	qwview.urlString = @"http://ipafont.ipa.go.jp/ipa_font_license_v1.html";
	[self presentModalViewController:qwview animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
	[self loadDefaultSettings];
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];	
	//	history[0].text = [defaults stringForKey:@"username"];
	[hist removeAllSegments];
	[hist insertSegmentWithTitle:[defaults stringForKey:@"h0"] atIndex:0 animated:NO];
	[hist insertSegmentWithTitle:[defaults stringForKey:@"h1"] atIndex:1 animated:NO];
	[hist insertSegmentWithTitle:[defaults stringForKey:@"h2"] atIndex:2 animated:NO];
	[hist insertSegmentWithTitle:[defaults stringForKey:@"h3"] atIndex:3 animated:NO];
	[hist insertSegmentWithTitle:[defaults stringForKey:@"h4"] atIndex:4 animated:NO];

	/*
	self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"1.jpg"]];
	l1.textColor = [UIColor blackColor];
	l2.textColor = l1.textColor;
	l3.textColor = l1.textColor;
	 */
}

- (void)loadDefaultSettings {
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];	
//	history[0].text = [defaults stringForKey:@"username"];
	backColor = [defaults integerForKey:@"backColor"];
	textColor = [defaults integerForKey:@"textColor"];
	minchoOn.on = [defaults integerForKey:@"minchoOn"];
}
- (NSString *)histGet{
	if(hist.selectedSegmentIndex >= 0){
		NSString *tmp;
		tmp = [hist titleForSegmentAtIndex:hist.selectedSegmentIndex];
		return(tmp);
	}
	return(nil);
}

- (int)backColorGet{
	return(backColor);
}
- (int)textColorGet{
	return(textColor);
}
- (BOOL)minchoOnGet{
	return(minchoOn.on);
}

- (IBAction)done {
	[self.delegate flipsideViewControllerDidFinish:self];	
}

- (IBAction)backColorDefault:(id)sender {
	backColor = 0;
	[self changeBackColor:backColor];
}
- (IBAction)backColorBlack:(id)sender {
	backColor = 1;
	[self changeBackColor:backColor];
}
- (IBAction)backColorSnow:(id)sender {
	backColor = 2;
	[self changeBackColor:backColor];
}
- (IBAction)backColorAqua:(id)sender {
	backColor = 3;	
	[self changeBackColor:backColor];
}
- (IBAction)backColorMaraschino:(id)sender {
	backColor = 4;
	[self changeBackColor:backColor];	
}
- (IBAction)backColorGrape:(id)sender {
	backColor = 5;
	[self changeBackColor:backColor];	
}
- (IBAction)backColorBubblegum:(id)sender {
	backColor = 6;
	[self changeBackColor:backColor];	
}
- (IBAction)backColorBanana:(id)sender {
	backColor = 7;
	[self changeBackColor:backColor];	
}
- (IBAction)backColorTin:(id)sender {
	backColor = 8;
	[self changeBackColor:backColor];	
}
- (IBAction)backColorSpindrift:(id)sender {
	backColor = 9;
	[self changeBackColor:backColor];	
}



- (IBAction)textColorDefault:(id)sender{
	textColor = 0;
	[self changeTextColor:textColor];
}
- (IBAction)textColorLicorice:(id)sender{
	textColor = 1;
	[self changeTextColor:textColor];
}
- (IBAction)textColorSnow:(id)sender{
	textColor = 2;
	[self changeTextColor:textColor];
}
- (IBAction)textColorAqua:(id)sender{
	textColor = 3;
	[self changeTextColor:textColor];
}
- (IBAction)textColorMaraschino:(id)sender{
	textColor = 4;
	[self changeTextColor:textColor];
}
- (IBAction)textColorGrape:(id)sender{
	textColor = 5;
	[self changeTextColor:textColor];
}
- (IBAction)textColorBubblegum:(id)sender{
	textColor = 6;
	[self changeTextColor:textColor];
}
- (IBAction)textColorBanana:(id)sender{
	textColor = 7;
	[self changeTextColor:textColor];
}
- (IBAction)textColorTin:(id)sender{
	textColor = 8;
	[self changeTextColor:textColor];
}
- (IBAction)textColorSpindrift:(id)sender{
	textColor = 9;
	[self changeTextColor:textColor];
}
- (IBAction)histChange:(id)sender{
	
}
- (IBAction)histDelete:(id)sender{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"" forKey:@"h4"];
	[defaults setObject:@"" forKey:@"h3"];
	[defaults setObject:@"" forKey:@"h2"];
	[defaults setObject:@"" forKey:@"h1"];
	[defaults setObject:@"" forKey:@"h0"];
	[hist removeAllSegments];
	[hist insertSegmentWithTitle:@"" atIndex:0 animated:NO];
	[hist insertSegmentWithTitle:@"" atIndex:1 animated:NO];
	[hist insertSegmentWithTitle:@"" atIndex:2 animated:NO];
	[hist insertSegmentWithTitle:@"" atIndex:3 animated:NO];
	[hist insertSegmentWithTitle:@"" atIndex:4 animated:NO];
}
- (IBAction)infoButton:(id)sender{
    UIActionSheet*  sheet;
    sheet = [[UIActionSheet alloc] 
			 initWithTitle:@"Select action" 
			 delegate:self 
			 cancelButtonTitle:@"Cancel" 
			 destructiveButtonTitle:nil 
			 otherButtonTitles:@"sumyapp App List", @"Support Site", nil];
    [sheet autorelease];
	
    // アクションシートを表示する
    [sheet showInView:self.view];	
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
			l1.textColor = [UIColor greenColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 1:
			l1.textColor = [UIColor blackColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 2:
			l1.textColor = [UIColor whiteColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 3:
			l1.textColor = [UIColor blueColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 4:
			l1.textColor = [UIColor redColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 5:
			l1.textColor = [UIColor purpleColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 6:
			l1.textColor = [UIColor magentaColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 7:
			l1.textColor = [UIColor yellowColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 8:
			l1.textColor = [UIColor grayColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		case 9:
			l1.textColor = [UIColor cyanColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
		default:
			l1.textColor = [UIColor blackColor];
			l2.textColor = l1.textColor;
			l3.textColor = l1.textColor;
			break;
	}	
}
- (void)actionSheet:(UIActionSheet*)actionSheet
clickedButtonAtIndex:(NSInteger)buttonIndex
{
	// ボタンインデックスをチェックする)
    if (buttonIndex >= 2) {
        return;
    }
	else if (buttonIndex == 1) {
		[[UIApplication sharedApplication] openURL:
		 [NSURL URLWithString:@"http://sumyapp.com/"]];
	}
	else {
		[[UIApplication sharedApplication] openURL:
		 [NSURL URLWithString:@"http://redirect.sumyapp.com/applist/"]];
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
}


- (void)dealloc {
    [super dealloc];
}


@end

//
//  FlipsideViewController.h
//  DekaMoji
//
//  Created by Koichiro,Sumi on 09/07/22.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

@protocol FlipsideViewControllerDelegate;


@interface FlipsideViewController : UIViewController <UIActionSheetDelegate> {
	id <FlipsideViewControllerDelegate> delegate;
	
	IBOutlet UISegmentedControl *hist;
	IBOutlet UILabel *l1;
	IBOutlet UILabel *l2;
	IBOutlet UILabel *l3;
	IBOutlet UISwitch *minchoOn;
	
	int	backColor;
	int textColor;
	
	NSString *history[5];
}

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;
- (IBAction)done;
- (IBAction)useMinchoSwitchChange:(id)sender;

- (IBAction)backColorBlack:(id)sender;
- (IBAction)backColorDefault:(id)sender;
- (IBAction)backColorSnow:(id)sender;
- (IBAction)backColorAqua:(id)sender;
- (IBAction)backColorMaraschino:(id)sender;
- (IBAction)backColorGrape:(id)sender;
- (IBAction)backColorBubblegum:(id)sender;
- (IBAction)backColorBanana:(id)sender;
- (IBAction)backColorTin:(id)sender;
- (IBAction)backColorSpindrift:(id)sender;

- (IBAction)textColorDefault:(id)sender;
- (IBAction)textColorLicorice:(id)sender;
- (IBAction)textColorSnow:(id)sender;
- (IBAction)textColorAqua:(id)sender;
- (IBAction)textColorMaraschino:(id)sender;
- (IBAction)textColorGrape:(id)sender;
- (IBAction)textColorBubblegum:(id)sender;
- (IBAction)textColorBanana:(id)sender;
- (IBAction)textColorTin:(id)sender;
- (IBAction)textColorSpindrift:(id)sender;

- (IBAction)histChange:(id)sender;
- (IBAction)histDelete:(id)sender;
- (IBAction)infoButton:(id)sender;

- (IBAction)ipafontButton:(id)sender;
- (void)loadDefaultSettings;
- (void)changeTextColor:(int)colornum;
- (void)changeBackColor:(int)colornum;

- (NSString *)histGet;
- (int)backColorGet;
- (int)textColorGet;
- (BOOL)minchoOnGet;
@end


@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end


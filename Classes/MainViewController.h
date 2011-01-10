//
//  MainViewController.h
//  DekaMoji
//
//  Created by Koichiro,Sumi on 09/07/22.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "FlipsideViewController.h"
#import "FontLabel.h"
#import "FontLabelStringDrawing.h"
#import "FontManager.h"

#import "YieldMakerView.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {
    IBOutlet UIButton *end;
    IBOutlet UITextField *inp;
	
	FontLabel *fontLabel;
	
	int backColor;
	int textColor;
	
	BOOL minchoOn;
	
	//adMaker
	YieldMakerView *lwebview;
}

- (IBAction)end1:(id)sender;
- (IBAction)in1:(id)sender;
- (IBAction)showInfo;
- (void)changeTextColor:(int)colornum;
- (void)changeBackColor:(int)colornum;
- (void)saveDefaultSettings;
- (void)loadDefaultSettings;
- (void)addHistory;
- (void)startAd:(NSString*)url;
@end

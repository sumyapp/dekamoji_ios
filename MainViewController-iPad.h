//
//  MainViewController-iPad.h
//  DekaMoji
//
//  Created by sumy on 10/05/31.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlipsideViewController.h"
#import "FontLabel.h"
#import "FontLabelStringDrawing.h"
#import "FontManager.h"

@interface MainViewController_iPad : UIViewController <FlipsideViewControllerDelegate> {
    IBOutlet UIButton *end;
    IBOutlet UITextField *inp;
	
	FontLabel *fontLabel;
	
	int backColor;
	int textColor;
	
	BOOL minchoOn;
}
- (IBAction)end1:(id)sender;
- (IBAction)in1:(id)sender;
- (IBAction)showInfo;
- (void)changeTextColor:(int)colornum;
- (void)changeBackColor:(int)colornum;
- (void)saveDefaultSettings;
- (void)loadDefaultSettings;
- (void)addHistory;
@end

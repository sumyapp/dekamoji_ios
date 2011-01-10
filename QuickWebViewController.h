//
//  QuickWebViewController.h
//  ComicOnline
//
//  Created by sumy on 10/03/02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface QuickWebViewController : UIViewController {
	NSString *urlString;
}
@property (nonatomic, retain) NSString *urlString;

- (IBAction)closeThisView;
- (IBAction)openSafari;
@end

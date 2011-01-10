//
//  DekaMojiAppDelegate-iPad.h
//  DekaMoji
//
//  Created by sumy on 10/05/31.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>

@class MainViewController_iPad;

@interface DekaMojiAppDelegate_iPad: NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MainViewController_iPad *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MainViewController_iPad *mainViewController;

@end

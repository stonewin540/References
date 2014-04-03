//
//  ScrollViewPreviewAppDelegate.h
//
//  Created by Björn Sållarp on 7/14/10.
//  NO Copyright 2010 MightyLittle Industries. NO rights reserved.
// 
//  Use this code any way you like. If you do like it, please
//  link to my blog and/or write a friendly comment. Thank you!
//
//  Read my blog @ http://blog.sallarp.com
//

#import <UIKit/UIKit.h>

@class ScrollViewPreviewViewController;

@interface ScrollViewPreviewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrollViewPreviewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollViewPreviewViewController *viewController;

@end


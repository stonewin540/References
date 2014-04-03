//
//  ScrollViewPreviewViewController.h
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
#import "BSPreviewScrollView.h"
#import "TapImage.h"

@interface ScrollViewPreviewViewController : UIViewController<BSPreviewScrollViewDelegate> {
	BSPreviewScrollView *scrollViewPreview;
	NSArray *scrollPages;
}
@property (nonatomic, retain) NSArray *scrollPages;
@property (nonatomic, retain) IBOutlet BSPreviewScrollView *scrollViewPreview;

@end


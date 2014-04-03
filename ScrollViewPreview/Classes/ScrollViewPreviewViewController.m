//
//  ScrollViewPreviewViewController.m
//
//  Created by Björn Sållarp on 7/14/10.
//  NO Copyright 2010 MightyLittle Industries. NO rights reserved.
// 
//  Use this code any way you like. If you do like it, please
//  link to my blog and/or write a friendly comment. Thank you!
//
//  Read my blog @ http://blog.sallarp.com
//

#import "ScrollViewPreviewViewController.h"

@implementation ScrollViewPreviewViewController
@synthesize scrollPages, scrollViewPreview;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	// We have some predefined images added to the project.
	self.scrollPages = [NSArray arrayWithObjects:@"ballmer1.jpg",
							   @"hoff2.jpg",
							   @"brolin.jpg",
							   @"hoff1.jpg",
							   @"ballmer2.jpg",
								nil];
	
	// You can add the control programatically like so:
	// Position the scrollview. It will be centered in the portrait view. The viewSize defines the size 
	// of each item you want to display in your scroll view. The size of the "preview" on each side equals the
	// width of the frame minus the width of the "view", ie, 320 - 240 = 60 / 2 = 30. 
	//scrollViewPreview = [[BSPreviewScrollView alloc] initWithFrameAndPageSize:CGRectMake(0, 70, 320, 320) pageSize:CGSizeMake(240, 320)];
	
	[scrollViewPreview setBackgroundColor:[UIColor darkGrayColor]];
	scrollViewPreview.pageSize = CGSizeMake(240, 320);
	// Important to listen to the delegate methods.
	scrollViewPreview.delegate = self;
	[self.view addSubview:scrollViewPreview];
}

#pragma mark -
#pragma mark BSPreviewScrollViewDelegate methods
-(UIView*)viewForItemAtIndex:(BSPreviewScrollView*)scrollView index:(int)index
{
	// Note that the images are actually smaller than the image view frame, each image
	// is 210x280. Images are centered and because they are smaller than the actual 
	// view it creates a padding between each image. 
	CGRect imageViewFrame = CGRectMake(0.0f, 0.0f, 240, 320);
	
	// TapImage is a subclassed UIImageView that catch touch/tap events 
	TapImage *imageView = [[[TapImage alloc] initWithFrame:imageViewFrame] autorelease];
	imageView.userInteractionEnabled = YES;
	imageView.image = [UIImage imageNamed:[self.scrollPages objectAtIndex:index]];
	imageView.contentMode = UIViewContentModeCenter;
	
	return imageView;
}

-(int)itemCount:(BSPreviewScrollView*)scrollView
{
	// Return the number of pages we intend to display
	return [self.scrollPages count];
}

#pragma mark -
#pragma mark Memory management
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Call the scrollview and let it know memory is running low
	[scrollViewPreview didReceiveMemoryWarning];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc 
{
	[scrollViewPreview release];
	[scrollPages release];
    [super dealloc];
}

@end

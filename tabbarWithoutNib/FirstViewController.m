//
//  FirstViewController.m
//  tabbarWithoutNib
//
//  Created by Ashley Ramsey on 6/06/11.
//  Copyright 2011 ashramsey. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // NSLog(@"%s", __FUNCTION__);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Screen One";
        
        // Background image
        UIImageView * background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"frootopiaBkgd.png"]];
        [self.view addSubview:background];
        [background release];
        
        // Customise TabbarItem
        UITabBarItem * firstTab = [[UITabBarItem alloc] initWithTitle:@"Home" image:0 tag:0];
        self.tabBarItem = firstTab;
        [firstTab release];
        
        // Create a label programmatically and add it to the view
        label = [[UILabel alloc] initWithFrame:CGRectMake(0,0,200,100)];
        label.text = @"This is the first tab view";
        [self.view addSubview:label];
        [label release];
        
    }
    return self;
}

- (void)dealloc
{
    // NSLog(@"%s", __FUNCTION__);
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // NSLog(@"%s", __FUNCTION__);
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    // NSLog(@"%s", __FUNCTION__);
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // NSLog(@"%s", __FUNCTION__);
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

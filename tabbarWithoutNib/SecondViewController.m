//
//  SecondViewController.m
//  tabbarWithoutNib
//
//  Created by Ashley Ramsey on 6/06/11.
//  Copyright 2011 ashramsey. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

@synthesize myButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // NSLog(@"%s", __FUNCTION__);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Screen Two";
        
        // Background image
        UIImageView * background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"frootopiaBkgd.png"]];
        [self.view addSubview:background];
        [background release];
        
        // Customise TabbarItem
        UITabBarItem * secondTab = [[UITabBarItem alloc] initWithTitle:@"Screen Two" image:0 tag:0];
        self.tabBarItem = secondTab;
        [secondTab release];
        
        // Create a button programmatically
        myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [myButton setFrame:CGRectMake(50, 300, 100, 80)];
        [myButton setTitle:@"Press Me" forState:UIControlStateNormal];
        [myButton setTitle:@"I'm pressed!" forState:UIControlEventTouchDown];
        [myButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [myButton setTitleColor:[UIColor redColor] forState:UIControlEventTouchDown];
        myButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        myButton.backgroundColor = [UIColor clearColor];
        [myButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:myButton];
    }
    return self;
}

- (void) buttonAction
{
    // NSLog(@"%s", __FUNCTION__);
    // Create an alert programmatically
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert Title" message:@"This is the Alert Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    [alert show];
    [alert release];
}

- (void)dealloc
{
    // NSLog(@"%s", __FUNCTION__);
    [myButton release];
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

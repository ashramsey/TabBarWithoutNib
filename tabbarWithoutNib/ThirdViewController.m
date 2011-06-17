//
//  ThirdViewController.m
//  tabbarWithoutNib
//
//  Created by Ashley Ramsey on 6/06/11.
//  Copyright 2011 ashramsey. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"

@implementation ThirdViewController

@synthesize myTableView, tempData, targetViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // NSLog(@"%s", __FUNCTION__);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        // Customise TabbarItem
        UITabBarItem * secondTab = [[UITabBarItem alloc] initWithTitle:@"Table View" image:0 tag:0];
        self.tabBarItem = secondTab;
        [secondTab release];
        
        // Create table view programmatically
        myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320,460) style:UITableViewStylePlain];
        [myTableView setDelegate:self];
        [myTableView setDataSource:self];
        
        // Get data
        
        //
        [self.view addSubview:myTableView];
        
    }
    return self;
}

- (void)dealloc
{
    // NSLog(@"%s", __FUNCTION__);
    [tempData release];
    [myTableView release];
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

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    // NSLog(@"%s", __FUNCTION__);
    [super viewDidLoad];
    self.title = @"Table Viewer";
    tempData = [[NSArray alloc] initWithObjects:@"row 1", @"row 2", @"row 3", nil];
    
}

- (void) viewWillAppear:(BOOL)animated
{
    // NSLog(@"%s", __FUNCTION__);
    [super viewWillAppear:animated];
    
//    [self.myTableView reloadData];
}

- (void)viewDidUnload
{
    // NSLog(@"%s", __FUNCTION__);
    // Release anything that can be recreateded in ViewDidLoad or on demand
    // self.tempData = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Table View Data Source Protocol

// -------------------------------------------------------------------------------
//	numberOfSectionsInTableView:tableView 
// -------------------------------------------------------------------------------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // NSLog(@"%s", __FUNCTION__);
	return 1;
}

// -------------------------------------------------------------------------------
//	tableView:tableView numberOfRowsInSection:section
// -------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // NSLog(@"%s", __FUNCTION__);
	// Return the number of time zone names.
	return [tempData count];
}
// -------------------------------------------------------------------------------
//	tableView:tableView cellForRowAtIndexPath:indexPath
// -------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // NSLog(@"%s", __FUNCTION__);
	static NSString *CellIdentifier = @"Cell";
	
	// Try to retrieve from the table view a now-unused cell with the given identifier.
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	// If no cell is available, create a new one using the given identifier.
	if (cell == nil) {
		// Use the default cell style.
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	
	// Set up the cell.
	NSString *offer = [tempData objectAtIndex:indexPath.row];
	cell.textLabel.text = offer;
	
	return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods

// -------------------------------------------------------------------------------
//	tableView:tableView didSelectRowAtIndexPath:indexPath
// -------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	//NSLog(@"%s", __FUNCTION__);
    
    //if (self.targetViewController == nil) {
        // Navigation logic may go here -- for example, create and push another view controller.
//        UIViewController *targetViewController = [[self.menuList objectAtIndex: indexPath.row] objectForKey:kViewControllerKey];
        UIViewController *myViewController = [[UIViewController alloc] init];
        myViewController.title = @"My View Controller";
        myViewController.view.backgroundColor = [UIColor redColor];
        
        // Load this string into the frootopia view
        //targetViewController.currentItem = @"Second Level Text";
        [self.navigationController pushViewController:myViewController animated:YES];
    //}
}
//- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    // NSLog(@"%s", __FUNCTION__);
//	// return nil;
//}


@end

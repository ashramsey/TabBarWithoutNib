//
//  ThirdViewController.h
//  tabbarWithoutNib
//
//  Created by Ashley Ramsey on 6/06/11.
//  Copyright 2011 ashramsey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@interface ThirdViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UITableView *myTableView;
    NSArray *tempData;
    
    SecondViewController *targetViewController;
}

@property (nonatomic, retain) UITableView *myTableView;
@property (nonatomic, retain) NSArray *tempData;

@property (nonatomic, retain) SecondViewController *targetViewController;

@end

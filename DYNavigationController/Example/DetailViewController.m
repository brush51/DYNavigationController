//
//  DetailViewController.m
//  DYNavigationController
//
//  Created by Derek Yang on 05/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];

    UILabel *popInstruction = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 40)];
    popInstruction.backgroundColor = [UIColor clearColor];
    popInstruction.text = @"Swipe right to pop current view out";
    popInstruction.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:popInstruction];
    [popInstruction release];

    UILabel *pushInstruction = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, 300, 40)];
    pushInstruction.backgroundColor = [UIColor clearColor];
    pushInstruction.text = @"Swipe left to push a new view in";
    pushInstruction.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:pushInstruction];
    [pushInstruction release];
}

#pragma mark - DYNavigationControllerDelegate

- (UIViewController *)viewControllerToPush {
    UIViewController *anotherDetailViewController = [[UIViewController alloc] init];
    anotherDetailViewController.view.backgroundColor = [UIColor lightGrayColor];
    return [anotherDetailViewController autorelease];
}

@end

//
//  JSMainViewController.m
//  iOS7StatusBarExample
//
//  Created by Js Lim on 6/16/14.
//  Copyright (c) 2014 Js Lim. All rights reserved.
//

#import "JSMainViewController.h"
#import "JSTransparentBgViewController.h"

@interface JSMainViewController ()

@end

@implementation JSMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Light Content";
    
    [self setNeedsStatusBarAppearanceUpdate];
    
    UIButton *transparentButton = [UIButton buttonWithType:UIButtonTypeCustom];
    transparentButton.frame = CGRectMake(20, 40, 280, 30);
    transparentButton.backgroundColor = [UIColor colorWithRed:250/255.0 green:107/255.0 blue:207/255.0 alpha:1];
    [transparentButton setTitle:@"Transparent status bar" forState:UIControlStateNormal];
    [transparentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [transparentButton addTarget:self action:@selector(transparentButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:transparentButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

- (UIStatusBarStyle) preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event
- (void)transparentButtonTapped:(UIButton *)sender
{
    JSTransparentBgViewController *controller = [[JSTransparentBgViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end

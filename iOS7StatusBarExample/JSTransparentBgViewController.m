//
//  JSTransparentBgViewController.m
//  iOS7StatusBarExample
//
//  Created by Js Lim on 6/16/14.
//  Copyright (c) 2014 Js Lim. All rights reserved.
//

#import "JSTransparentBgViewController.h"

@interface JSTransparentBgViewController ()

@end

@implementation JSTransparentBgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1];
    [self setNeedsStatusBarAppearanceUpdate];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleTopMargin;
    scrollView.contentSize = CGSizeMake(CGRectGetWidth(scrollView.frame), 800);
    [self.view addSubview:scrollView];
    
    UIImageView *coverImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -20, CGRectGetWidth(scrollView.frame), 300)];
    coverImageView.image = [UIImage imageNamed:@"Cover"];
    coverImageView.backgroundColor = [UIColor blueColor];
    coverImageView.userInteractionEnabled = YES;
    [scrollView addSubview:coverImageView];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(12, 32, 21, 21);
    [backButton setImage:[UIImage imageNamed:@"BackIndicator"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backTapped:) forControlEvents:UIControlEventTouchUpInside];
    [coverImageView addSubview:backButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
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
- (void)backTapped:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
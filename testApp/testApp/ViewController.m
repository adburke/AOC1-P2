//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 4/18/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 768.0f, 100.0f)];
    
    if (titleLabel)
    {
        titleLabel.backgroundColor = [UIColor redColor];
        titleLabel.font = [UIFont boldSystemFontOfSize:50.0f];
        titleLabel.adjustsFontSizeToFitWidth = YES;
        titleLabel.text = @"The Davinci Code";
        titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:titleLabel];
    
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 384.0f, 50.0f)];
    
    if (authorLabel)
    {
        authorLabel.backgroundColor = [UIColor blueColor];
        authorLabel.font = [UIFont systemFontOfSize:25];
        authorLabel.textColor = [UIColor whiteColor];
        authorLabel.adjustsFontSizeToFitWidth = YES;
        authorLabel.text = @"Author:";
        authorLabel.textAlignment = NSTextAlignmentRight;
    }
    
    [self.view addSubview:authorLabel];
    
    authorText = [[UILabel alloc] initWithFrame:CGRectMake(384.0f, 120.0f, 384.0f, 50.0f)];
    
    if (authorText)
    {
        authorText.backgroundColor = [UIColor yellowColor];
        authorText.font = [UIFont systemFontOfSize:25];
        authorText.textColor = [UIColor brownColor];
        authorText.adjustsFontSizeToFitWidth = YES;
        authorText.text = @"Dan Brown";
        authorText.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:authorText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

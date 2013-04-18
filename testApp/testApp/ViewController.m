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
    // Changing view background color
    self.view.backgroundColor = [UIColor colorWithRed:0.1f green:0.3f blue:0.25f alpha:1.0f];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    // Title Section
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
    
    // Author Section
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
    
    // Published Section
    pubLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 190.0f, 384.0f, 50.0f)];
    
    if (pubLabel)
    {
        pubLabel.backgroundColor = [UIColor greenColor];
        pubLabel.font = [UIFont systemFontOfSize:25];
        pubLabel.textColor = [UIColor grayColor];
        pubLabel.adjustsFontSizeToFitWidth = YES;
        pubLabel.text = @"Published:";
        pubLabel.textAlignment = NSTextAlignmentRight;
    }
    
    [self.view addSubview:pubLabel];
    
    
    pubText = [[UILabel alloc] initWithFrame:CGRectMake(384.0f, 190.0f, 384.0f, 50.0f)];
    
    if (pubText)
    {
        pubText.backgroundColor = [UIColor cyanColor];
        pubText.font = [UIFont systemFontOfSize:25];
        pubText.textColor = [UIColor darkGrayColor];
        pubText.adjustsFontSizeToFitWidth = YES;
        pubText.text = @"April 2003";
        pubText.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:pubText];
    
    // Summary Section
    sumLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 260.0f, 384.0f, 50.0f)];
    
    if (sumLabel)
    {
        sumLabel.backgroundColor = [UIColor magentaColor];
        sumLabel.font = [UIFont boldSystemFontOfSize:25.0f];
        sumLabel.textColor = [UIColor colorWithRed:0.7f green:1.0f blue:0.0f alpha:1.0f ];
        sumLabel.adjustsFontSizeToFitWidth = YES;
        sumLabel.text = @"Summary:";
        sumLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:sumLabel];
    
    sumText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 330.0f, 768.0f, 150.0f)];
    
    if (sumText)
    {
        sumText.backgroundColor = [UIColor orangeColor];
        sumText.font = [UIFont boldSystemFontOfSize:25.0f];
        sumText.textColor = [UIColor colorWithRed:0.0f green:0.1f blue:0.5f alpha:1.0f];
        sumText.adjustsFontSizeToFitWidth = YES;
        sumText.text = @"The book follows Robert Langdon and Sophie Neveu as they investigate a murder in Paris's Louvre Museum and discover a battle between the Priory of Sion and Opus Dei over the possibility of Jesus having been married to Mary Magdalene.";
        sumText.numberOfLines = 4;
        sumText.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:sumText];
    
    // List Items Label
    listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 500.0f, 384.0f, 50.0f)];
    
    if (listLabel)
    {
        listLabel.backgroundColor = [UIColor lightGrayColor];
        listLabel.font = [UIFont boldSystemFontOfSize:25.0f];
        listLabel.textColor = [UIColor colorWithRed:0.102f green:0.40f blue:0.224f alpha:1.0f];
        listLabel.adjustsFontSizeToFitWidth = YES;
        listLabel.text = @"List of Items:";
        listLabel.numberOfLines = 7;
        listLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:listLabel];
    
    //    Standard Array Syntax
    NSArray *listItems = [[NSArray alloc] initWithObjects:@"Opus Dei", @"Priory of Scion", @"Bible", @"Holy Grail", @"Louvre", nil];
    
    // Array literal
    // NSArray *listItems = @[@"Opus Dei", @"Priory of Scion", @"Bible", @"Holy Grail", @"Louvre"];
    
    //    NSMutableArray *mutListItems = [[NSMutableArray alloc] initWithCapacity:5];
    
    //    Standard Array Query
    //    for (int i = 0; i < listItems.count; i++) {
    //        [mutListItems addObject:[listItems objectAtIndex:i]];
    //    }
    
    //  Subscript Query
    //    for (int i = 0; i < listItems.count; i++) {
    //        [mutListItems addObject:listItems[i]];
    //    }
    
    NSMutableString *mutListString = [[NSMutableString alloc] initWithCapacity:50];
    
    for (int i = 0, j = listItems.count; i < j; i++) {
        if (i == j - 1){
            [mutListString appendFormat:@" and %@ ",[listItems objectAtIndex:i]];
        } else {
            [mutListString appendFormat:@"%@, ", [listItems objectAtIndex:i]];
        }
    }
    //    Test fast enumeration
    //    int index = 0;
    //    for (id obj in listItems) {
    //        if (index == listItems.count - 1){
    //            [mutListString appendFormat:@" and %@ ",obj];
    //        } else {
    //            [mutListString appendFormat:@"%@, ", obj];
    //        }
    //        index++;
    //    }
    
    // Creating the list text
    listText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 570.0f, 768.0f, 50.0f)];
    
    if (listText)
    {
        listText.backgroundColor = [UIColor colorWithRed:0.0f green:0.7f blue:0.3f alpha:1.0f];
        listText.font = [UIFont boldSystemFontOfSize:25.0f];
        listText.textColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.3f alpha:1.0f];
        listText.adjustsFontSizeToFitWidth = YES;
        listText.text = mutListString;
        listText.numberOfLines = 7;
        listText.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:listText];
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    NSLog(@"rotate fired from %d", fromInterfaceOrientation);
    
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"Will rotate to %d in %f seconds", toInterfaceOrientation, duration);
}

@end

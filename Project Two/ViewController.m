//
//  ViewController.m
//  Project Two
//
//  Created by nathan byarley on 12/4/13.
//  Copyright (c) 2013 nathan byarley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Alters the background color using UIColor
    self.view.backgroundColor = [UIColor blueColor];
    
    //book information
    bookName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 770.0f, 25.0f)];
    //if statement based on if anything is within the bookName variable
    if(bookName != nil) {
        bookName.Text = @"Eragon.";
        bookName.textColor = [UIColor whiteColor];
        bookName.textAlignment = NSTextAlignmentCenter;
        bookName.backgroundColor = [UIColor colorWithRed:0.170 green:0.490 blue:0.201 alpha:1];
    }
    
    //view information from book in the view
    [self.view addSubview: bookName];
    
    //author information
    author =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 25.0f,  100.0f, 20.0f)];
    
    //if statement based on if anything is within the author variable
    if (author != nil) {
        author.text = @"Author:";
        author.textColor = [UIColor whiteColor];
        author.textAlignment = NSTextAlignmentRight;
        author.backgroundColor = [UIColor colorWithRed:0.11 green:0.218 blue:0.402 alpha:1];
    }
    
    //view information from author in the view
    [self.view addSubview: author];
    
    
    
    //this label will be asjacent to the the Author label as it will hold the primary information based on the Author
    authorName =[[UILabel alloc] initWithFrame: CGRectMake (105.0f, 25.0f,  669.0f, 20.0f)];
    
    //if statement based on if anything is within the authorName variable
    if (authorName != nil) {
        authorName.text = @"Christopher Paolini";
        authorName.textColor = [UIColor colorWithRed:0.349 green:0.486 blue:1 alpha:1];
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.backgroundColor = [UIColor colorWithRed:0.694 green:0.839 blue:1 alpha:1];
    }
    
    //get information on author and view it on screen
    [self.view addSubview: authorName];
    
    
    
    //Published information
    published =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 50.0f,  100.0f, 20.0f)];
    
    if (published != nil) {
        published.text = @"Published:";
        published.textColor = [UIColor colorWithRed:1 green:0.839 blue:0.239 alpha:1];
        published.textAlignment = NSTextAlignmentRight;
        published.backgroundColor = [UIColor colorWithRed:1 green:0.149 blue:0.218 alpha:1] ;
    }
    
    //view published information
    [self.view addSubview: published];
    
    
    
    //date the book was published
    publishedOn =[[UILabel alloc] initWithFrame: CGRectMake (105.0f, 50.0f,  669.0f, 20.0f)];
    
    if (publishedOn != nil) {
        publishedOn.text = @"26 August 2002";
        publishedOn.textColor = [UIColor whiteColor];
        publishedOn.textAlignment = NSTextAlignmentLeft;
        publishedOn.backgroundColor = [UIColor colorWithRed:0.91 green:0.647 blue:0.525 alpha:1];
    }
    
    //view the publishedOn information
    [self.view addSubview: publishedOn];
    
    
    //summery information
    summary =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 75.0f,  100.0f, 20.0f)];
    
    if (summary != nil) {
        summary.text = @"Summary:";
        summary.textColor = [UIColor colorWithRed:1 green:0.588 blue:0.414 alpha:1];
        summary.textAlignment = NSTextAlignmentLeft;
        summary.backgroundColor =[UIColor colorWithRed:0.933 green:0.91 blue:0.392 alpha:1];
    }
    
    //view the summery information
    [self.view addSubview: summary];
    
    
    
    //Plot information spaning multipule lines
    plot =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 100.0f,  770.0f, 100.0f)];
    
    if (plot != nil) {
        plot.text = @"Fifteen-year-old Eragon believes that he is merely a poor farm boy- until his destiny as a Dragon Rider is revealed. Gifted with only an ancient sword, a loyal dragon, and sage advice from an old storyteller, Eragon is soon swept into a dangerous tapestry of magic, glory, and power. Now his choices could save - or destroy- the Empire.";
        plot.textColor = [UIColor blackColor];
        plot.textAlignment = NSTextAlignmentCenter;
        plot.backgroundColor =[UIColor colorWithRed:0.191 green:0.902 blue:0.627 alpha:1];
        plot.numberOfLines = 4;
    }
    
    //view plot on screen
    [self.view addSubview: plot];
    
    
    //array of items in the book
    itemsArray = [[NSArray alloc] initWithObjects: @"Dragon eggs", @"Bow", @"King Galbatorix", @"The Spine", @"& The Varden", nil];
    
    
    //NSMutableString to allocate
    NSMutableString *mList = [[NSMutableString alloc] init];
    
    
    //for loop, looping through the array
    for (int i = 0; i < [itemsArray count]; i++)
    {
        appendItem = [itemsArray objectAtIndex:i ];
        
        //if conditional on what to do based on the count within itemsArray.
        if ([itemsArray count] == i+1){
            [mList appendString:[[NSString alloc] initWithFormat:@"%@", appendItem]];
        }
        else {
            [mList appendString:[[NSString alloc] initWithFormat:@"%@, ", appendItem]];
        }
        
    }
    
    //list the items in the array.
    listItems =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 210.0f,  770.0f, 50.0f)];
    listItems.text = mList;
    listItems.textColor = [UIColor colorWithRed:0.349 green:0.282 blue:0.329 alpha:1];
    listItems.textAlignment = NSTextAlignmentCenter;
    listItems.backgroundColor = [UIColor colorWithRed:0.91 green:0.275 blue:0.357 alpha:1];
    
    //view the items on screen
    [self.view addSubview: listItems];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

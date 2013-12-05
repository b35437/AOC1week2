//
//  ViewController.h
//  Project Two
//
//  Created by nathan byarley on 12/4/13.
//  Copyright (c) 2013 nathan byarley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //UILabel variables
    UILabel * bookName;
    UILabel * author;
    UILabel * authorName;
    UILabel * published;
    UILabel * publishedOn;
    UILabel * summary;
    UILabel * plot;
    UILabel * list;
    UILabel * listItems;
    
    //array and string variable
    NSArray *itemsArray;
    NSString *appendItem;
}

@end

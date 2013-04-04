//
//  MMViewController.m
//  CodeBlockMultiplier
//
//  Created by RHINO on 2/18/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()
{
    __weak IBOutlet UITextField *Field1;
    
    __weak IBOutlet UITextField *Field2;
    
    __weak IBOutlet UILabel *ProductLabel;
    
}

@end

@implementation MMViewController

- (void)takeNumber:(NSInteger)int1 andNumber: (NSInteger)int2 usingBlock:(NSInteger(^)(NSInteger, NSInteger))computeBlock{
    
    ProductLabel.text = [NSString stringWithFormat:@"%i", computeBlock(int1, int2)];
}

- (IBAction)MultiplyButton:(id)sender {

    [self takeNumber:[Field1.text intValue] andNumber:[Field2.text intValue] usingBlock:^
     NSInteger (NSInteger int1, NSInteger int2)
     {
         return int1 * int2;
     }];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

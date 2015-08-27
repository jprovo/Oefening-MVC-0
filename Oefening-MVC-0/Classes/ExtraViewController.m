//
//  ExtraViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 27/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "ExtraViewController.h"

@interface ExtraViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ExtraViewController

- (IBAction)didChangeValueOfSegmentedControl:(UISegmentedControl *)segmentedControl
{
    self.label.text = [NSString stringWithFormat:@"%ld", (long)segmentedControl.selectedSegmentIndex];
}

- (IBAction)didChangeValueOfDatePicker:(UIDatePicker *)datePicker
{
    self.label.text = [NSString stringWithFormat:@"%@", datePicker.date];
}

@end

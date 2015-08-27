//
//  SliderViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SliderViewController

- (IBAction)didChangeValueOfSlider:(UISlider *)slider
{
    self.label.text = [NSString stringWithFormat:@"%d", (int)slider.value];
}

@end

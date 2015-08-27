//
//  SwitchViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SwitchViewController

- (IBAction)didChangeValueOfSwitch:(UISwitch *)switchControl
{
    if (switchControl.isOn) {
        self.label.text = @"On :)";
    } else {
        self.label.text = @"Off :(";
    }
}

@end

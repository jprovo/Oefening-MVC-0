//
//  ImageViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ImageViewController

- (IBAction)didTapButton:(UIButton *)button
{
    #warning - Every time you press the button, select another image. Be sure to check out the UIImageView's scaling modes. The UIImageView is `NOT` yet connected to a property and the UIButton is `NOT` yet connected to this IBAction.
}

@end

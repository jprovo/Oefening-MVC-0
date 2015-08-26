//
//  RandomViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "RandomViewController.h"

@interface RandomViewController ()

@property (weak, nonatomic) IBOutlet UILabel *randomNumber;
@property (weak, nonatomic) IBOutlet UILabel *randomLetter;

@end

@implementation RandomViewController

- (IBAction)didTapButton:(UIButton *)button
{
#warning - Every time you press the button, a random number & letter should appear on the screen. The UILabels are already connected to a property and the UIButton is already connected to this IBAction.
}

- (NSString *)generateRandomLetter
{
    return @"?";
}

/**
 
 This method returns a random number.
 
 */
- (NSUInteger)generateRandomNumber
{
    return arc4random();
}

/**
 
 This methods returns a number between 0 and the number you specified - 1.
 
 E.g.: If `number` is 10, the number returned will be in interval [0 - 9].
 
*/
- (NSUInteger)generateRandomNumberBetween0And:(u_int32_t)number
{
    return arc4random_uniform(number);
}

@end

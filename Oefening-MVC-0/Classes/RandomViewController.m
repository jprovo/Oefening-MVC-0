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
    self.randomNumber.text = [NSString stringWithFormat:@"%lu", (unsigned long)[self generateRandomNumber]];
    self.randomLetter.text = [self generateRandomLetter];
}

- (NSString *)generateRandomLetter
{
    NSArray *alphabat = @[ @"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z" ];
    NSInteger randomIndex = [self generateRandomNumberBetween0And:alphabat.count];
    return [alphabat objectAtIndex:randomIndex];
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
- (NSUInteger)generateRandomNumberBetween0And:(NSInteger)number
{
    return arc4random_uniform((unsigned int)number);
}

@end

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
@property (assign, nonatomic) NSInteger imageIndex;

@end

@implementation ImageViewController

- (IBAction)didTapButton:(UIButton *)button
{
    NSArray *imageNames = @[ @"meme-01", @"meme-02", @"meme-03", @"meme-04", @"meme-05" ];
    self.imageIndex = (self.imageIndex + 1) % imageNames.count;
    NSString *imageName = [imageNames objectAtIndex:self.imageIndex];
    UIImage *image = [UIImage imageNamed:imageName];
    self.imageView.image = image;
}

@end

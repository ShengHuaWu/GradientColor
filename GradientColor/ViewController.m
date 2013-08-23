//
//  ViewController.m
//  GradientColor
//
//  Created by Shenghua on 13/8/23.
//  Copyright (c) 2013年 Shenghua. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"
#import "GradientColorView.h"

static const CGFloat Radius = 50.0f;

static const CGFloat GradientColorViewWidth = 50.0f;
static const CGFloat GradientColorViewHeight = 15.0f;

@interface ViewController ()
@property (nonatomic, strong) NSArray *colorArray;
@end

@implementation ViewController

#pragma mark - View life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorArray = @[[UIColor greenColor], [UIColor redColor], [UIColor blueColor]];
}

#pragma mark - Button action
- (IBAction)present:(UIButton *)sender
{
    CircleView *tempCircle = nil;
    
    for (UIColor *color in self.colorArray) {
        NSInteger index = [self.colorArray indexOfObject:color];
        CircleView *circle = [[CircleView alloc] initWithFrame:CGRectMake((Radius + GradientColorViewWidth) * index, CGRectGetHeight(self.view.bounds) / 2.0f - Radius, Radius, Radius) fillColor:color];
        [self.view addSubview:circle];
        
        if (tempCircle) {
            GradientColorView *gcView = [[GradientColorView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(tempCircle.frame), CGRectGetMidY(tempCircle.frame) - GradientColorViewHeight / 2.0f, GradientColorViewWidth, GradientColorViewHeight) startColor:tempCircle.fillColor endColor:circle.fillColor];
            [self.view addSubview:gcView];
            
        }
        
        tempCircle = circle;
    }
}

@end

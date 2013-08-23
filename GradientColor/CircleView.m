//
//  CircleView.m
//  StoryboardTest
//
//  Created by Shenghua on 13/8/23.
//  Copyright (c) 2013年 Shenghua. All rights reserved.
//

#import "CircleView.h"

@interface CircleView ()
@property (nonatomic, strong, readwrite) UIColor *fillColor;
@end

@implementation CircleView

- (id)initWithFrame:(CGRect)frame fillColor:(UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        _fillColor = color;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [self.fillColor set];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddPath(context, path.CGPath);
    CGContextDrawPath(context, kCGPathFillStroke);
}

@end

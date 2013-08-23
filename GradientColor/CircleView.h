//
//  CircleView.h
//  StoryboardTest
//
//  Created by Shenghua on 13/8/23.
//  Copyright (c) 2013年 Shenghua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView
@property (nonatomic, strong, readonly) UIColor *fillColor;

- (id)initWithFrame:(CGRect)frame fillColor:(UIColor *)color;
@end

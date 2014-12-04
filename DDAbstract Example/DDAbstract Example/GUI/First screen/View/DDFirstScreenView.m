//
//  DDFirstScreenView.m
//  DDAbstract Example
//
//  Created by Hadi Michael Salem on 4/12/2014.
//  Copyright (c) 2014 Deloitte Digital. All rights reserved.
//

#import "DDFirstScreenView.h"

@interface DDFirstScreenView()

@property (nonatomic) UILabel *screenTitleLabel;

@end

@implementation DDFirstScreenView

- (DDFirstScreenView *)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        [self setScreenTitleLabel:[[UILabel alloc] initWithFrame:CGRectZero]];
        [_screenTitleLabel setText:@"Hello, world! This is the first screen."];
        [_screenTitleLabel setNumberOfLines:0];
        [self addSubview:_screenTitleLabel];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.screenTitleLabel setFrame:CGRectMake(10,50,200,50)];
}

@end

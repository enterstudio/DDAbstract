//
//  DDFirstScreenView_Pad.m
//  DDAbstract Example
//
//  Created by Hadi Michael Salem on 4/12/2014.
//  Copyright (c) 2014 Deloitte Digital. All rights reserved.
//

#import "DDFirstScreenView_Pad.h"

@interface DDFirstScreenView_Pad()

@property (nonatomic) UILabel *padLabel;

@end

@implementation DDFirstScreenView_Pad

- (DDFirstScreenView *)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        [self setPadLabel:[[UILabel alloc] initWithFrame:CGRectZero]];
        [_padLabel setText:@"We are on an iPad."];
        [_padLabel setNumberOfLines:0];
        [self addSubview:_padLabel];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.padLabel setFrame:CGRectMake(10,110,200,50)];
}

@end

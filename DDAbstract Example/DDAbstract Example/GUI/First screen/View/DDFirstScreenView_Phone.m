//
//  DDFirstScreenView_Phone.m
//  DDAbstract Example
//
//  Created by Hadi Michael Salem on 4/12/2014.
//  Copyright (c) 2014 Deloitte Digital. All rights reserved.
//

#import "DDFirstScreenView_Phone.h"

@interface DDFirstScreenView_Phone()

@property (nonatomic) UILabel *phoneLabel;

@end

@implementation DDFirstScreenView_Phone

- (DDFirstScreenView *)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        [self setPhoneLabel:[[UILabel alloc] initWithFrame:CGRectZero]];
        [_phoneLabel setText:@"We are on an iPhone."];
        [_phoneLabel setNumberOfLines:0];
        [self addSubview:_phoneLabel];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.phoneLabel setFrame:CGRectMake(10,110,200,50)];
}

@end

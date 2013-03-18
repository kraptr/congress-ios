//
//  SFFavoriteButton.m
//  Congress
//
//  Created by Daniel Cloud on 3/14/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFFavoriteButton.h"

@implementation SFFavoriteButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UIImage *normalIcon = [UIImage imageNamed:@"favorite"];
        UIImage *selectedIcon = [UIImage imageNamed:@"favorite-selected"];
        [self setImage:normalIcon forState:UIControlStateNormal];
        [self setImage:selectedIcon forState:UIControlStateSelected];
    }
    return self;
}

- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize fitSize = [super sizeThatFits:size];
    fitSize.width += 20.0f;
    fitSize.height += 20.0f;
    return fitSize;
}

@end

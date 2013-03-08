//
//  SFNavTableCell.m
//  Congress
//
//  Created by Daniel Cloud on 11/30/12.
//  Copyright (c) 2012 Sunlight Foundation. All rights reserved.
//

#import "SFNavTableCell.h"

@implementation SFNavTableCell

#pragma mark - UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textLabel.textColor = [UIColor menuTextColor];
        [self.textLabel setBackgroundColor:[UIColor menuBackgroundColor]];
        self.detailTextLabel.textColor = self.textLabel.textColor;

        self.selectionStyle = UITableViewCellSelectionStyleGray;
        SSBorderedView *selBackground = [[SSBorderedView alloc] initWithFrame:CGRectZero];
        selBackground.backgroundColor = [UIColor menuSelectionBackgroundColor];
        selBackground.bottomBorderColor =  [UIColor menuDividerBottomColor];
        selBackground.bottomInsetColor =  [UIColor menuDividerBottomInsetColor];
		selBackground.contentMode = UIViewContentModeRedraw;
        self.selectedBackgroundView = selBackground;
        
        SSBorderedView *background = [[SSBorderedView alloc] initWithFrame:CGRectZero];
        background.backgroundColor = [UIColor menuBackgroundColor];
        background.bottomBorderColor =  [UIColor menuDividerBottomColor];
        background.bottomInsetColor =  [UIColor menuDividerBottomInsetColor];
		background.contentMode = UIViewContentModeRedraw;
        self.backgroundView = background;
        self.contentView.clipsToBounds = YES;
    }
    return self;
}

@end

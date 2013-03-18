//
//  SFLabel.m
//  Congress
//
//  Created by Daniel Cloud on 3/13/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFLabel.h"

@implementation SFLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        UILongPressGestureRecognizer *pressGestureRec = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPress:)];
        pressGestureRec.delegate = self;
        [self addGestureRecognizer:pressGestureRec];
    }
    return self;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)copy:(id)sender
{
    UIPasteboard *pb = [UIPasteboard generalPasteboard];
    [pb setString:self.text];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return (action == @selector(copy:));
}

- (void)handleLongPress:(UIGestureRecognizer*)recognizer
{
    [self becomeFirstResponder];
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        UIMenuController *copyMenu = [UIMenuController sharedMenuController];
        CGRect halfLabel = CGRectInset(self.frame, self.frame.size.width/2, self.frame.size.height/2);
        [copyMenu setTargetRect:halfLabel inView:self.superview];
        [copyMenu setMenuVisible:YES animated:YES];

    }
}

@end

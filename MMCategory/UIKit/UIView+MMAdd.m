//
//  UIView+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UIView+MMAdd.h"
#import "UIGestureRecognizer+MMAdd.h"

@implementation UIView (MMAdd)

- (void)mm_addLongPressGestureRecognizerWithHandler:(void (^)(id sender))handler
{
    UILongPressGestureRecognizer *recognizer = [[UILongPressGestureRecognizer alloc] initWithMMActionBlock:^(id  _Nonnull sender) {
        if (handler) {
            handler(self);
        }
    }];
    [self addGestureRecognizer:recognizer];
    [self setUserInteractionEnabled:YES];
}

- (void)mm_addTapGestureRecognizerWithHandler:(void (^)(id))handler
{
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithMMActionBlock:^(id  _Nonnull sender) {
        if (handler) {
            handler(self);
        }
    }];
    [self addGestureRecognizer:recognizer];
    [self setUserInteractionEnabled:YES];
}

@end

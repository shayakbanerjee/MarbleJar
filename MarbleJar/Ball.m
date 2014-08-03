//
//  Ball.m
//  MarbleJar
//
//  Created by Shayak Banerjee on 8/2/14.
//  Copyright (c) 2014 Shayak Banerjee. All rights reserved.
//

#import "Ball.h"

@implementation Ball

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.radius = frame.size.height/2.0;
        self.ballColor = [UIColor redColor];
        self.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef ctx= UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    CGContextSaveGState(ctx);
    
    CGContextSetLineWidth(ctx,2);
    CGContextSetStrokeColorWithColor(ctx, self.ballColor.CGColor);
    CGContextAddArc(ctx,center.x,center.y,self.radius,0.0,M_PI*2,YES);
    CGContextSetFillColorWithColor(ctx, self.ballColor.CGColor);
    CGContextFillPath(ctx);
    CGContextStrokePath(ctx);
}


@end

//
//  Container.m
//  MarbleJar
//
//  Created by Shayak Banerjee on 8/2/14.
//  Copyright (c) 2014 Shayak Banerjee. All rights reserved.
//

#import "Container.h"

@implementation Container

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.containerCenter = CGPointMake((self.frame.origin.x+self.frame.size.width/2.0),
                                           (self.frame.origin.y+self.frame.size.height/2.0));
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
    CGContextSetRGBStrokeColor(ctx,0.8,0.8,0.8,1.0);
    CGContextAddArc(ctx,center.x,center.y,self.radius,0.0,M_PI*2,YES);
    CGContextSetRGBFillColor(ctx, 0.8, 0.8, 0.8, 1.0);
    CGContextFillPath(ctx);
    CGContextStrokePath(ctx);
}


@end

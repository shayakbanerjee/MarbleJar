//
//  Container.h
//  MarbleJar
//
//  Created by Shayak Banerjee on 8/2/14.
//  Copyright (c) 2014 Shayak Banerjee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ball.h"
#define SMALL_BALL_RADIUS 15.0f

@interface Container : UIView

@property (nonatomic) CGPoint containerCenter;
@property (nonatomic) CGFloat radius;
@property (strong, nonatomic) UIColor* jarColor;

@end

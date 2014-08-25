//
//  MarbleJarViewController.h
//  MarbleJar
//
//  Created by Shayak Banerjee on 8/2/14.
//  Copyright (c) 2014 Shayak Banerjee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Container.h"
#import "Ball.h"
#define SMALL_BALL_RADIUS 5.0f
#define CONTAINER_RADIUS 120.0f

@interface MarbleJarViewController : UIViewController

@property (strong, nonatomic) Container* jar;
@property (strong, nonatomic) NSMutableArray* marbles;
@property (strong, nonatomic) UIDynamicAnimator* animator;
@property (strong, nonatomic) UICollisionBehavior* collisionBehavior;
@property (strong, nonatomic) UIGravityBehavior* gravityBehavior;
@property (strong, nonatomic) NSTimer* dropBallTimer;

@end

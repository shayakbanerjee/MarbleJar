//
//  ShadesViewController.m
//  MarbleJar
//
//  Created by Shayak Banerjee on 8/2/14.
//  Copyright (c) 2014 Shayak Banerjee. All rights reserved.
//

#import "MarbleJarViewController.h"

@interface MarbleJarViewController ()

@end

@implementation MarbleJarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    CGFloat frameX = self.view.frame.origin.x+40.0;
    CGFloat frameY = self.view.frame.origin.y+80.0;
    CGFloat frameW = self.view.frame.size.width-80.0;
    CGFloat frameH = self.view.frame.size.height-160.0;
    
    // Add the container and marble
    self.jar = [[Container alloc] initWithFrame:CGRectMake(frameX, frameY, frameW, frameH)];
    self.jar.backgroundColor = [UIColor lightGrayColor];
    self.jar.radius = CONTAINER_RADIUS;
    [self.view addSubview:self.jar];
    self.marble = [[Ball alloc] initWithFrame:CGRectMake(frameX+frameW/2.0,
                                                         frameY+3*SMALL_BALL_RADIUS,
                                                         SMALL_BALL_RADIUS*2.0,
                                                         SMALL_BALL_RADIUS*2.0)];
    [self.view addSubview:self.marble];
    
    // Animate the marble
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UIGravityBehavior* gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.marble]];
    [self.animator addBehavior:gravityBehavior];
    
    UICollisionBehavior* collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.marble]];
    [collisionBehavior addBoundaryWithIdentifier:@"jarBoundary"
                    forPath:[self createContainerPath:CGPointMake(frameX+frameW/2.0, frameY+frameH/2.0)]];
    [self.animator addBehavior:collisionBehavior];
}

- (UIBezierPath *)createContainerPath:(CGPoint)center
{
    UIBezierPath *aPath = [UIBezierPath bezierPathWithArcCenter:center
                                                radius:CONTAINER_RADIUS
                                                startAngle:0
                                                endAngle:2*M_PI
                                                clockwise:YES];
    return aPath;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

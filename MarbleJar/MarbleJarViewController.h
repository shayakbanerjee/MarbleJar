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
#define SMALL_BALL_RADIUS 15.0f
#define CONTAINER_RADIUS 120.0f

@interface MarbleJarViewController : UIViewController

@property (strong, nonatomic) Container* jar;
@property (strong, nonatomic) Ball* marble;
@property (strong, nonatomic) UIDynamicAnimator* animator;

@end

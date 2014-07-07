//
//  ViewController.m
//  AHKSwiftOutTimingFunction
//
//  Created by Arkadiusz on 07-07-14.
//  Copyright (c) 2014 Arkadiusz Holko. All rights reserved.
//

#import "ViewController.h"
#import "CAMediaTimingFunction+SwiftOut.h"

static CGFloat const rect1x = 50;
static CGFloat const rect2x = 270;
static CGFloat const bottomYPosition = 350;
static CGFloat const topYPosition = 50;
static CGFloat const animationDuration = 0.8;

@interface ViewController ()
@property (nonatomic, strong) UIView *rect1;
@property (nonatomic, strong) UIView *rect2;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIView *rectangle = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    rectangle.backgroundColor = [UIColor greenColor];
    rectangle.layer.cornerRadius = 30;
    [self.view addSubview:rectangle];

    self.rect1 = rectangle;

    UIView *rectangle2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    rectangle2.backgroundColor = [UIColor orangeColor];
    rectangle2.layer.cornerRadius = 30;
    [self.view addSubview:rectangle2];

    self.rect2 = rectangle2;

    self.rect1.layer.position = CGPointMake(rect1x, 350);
    self.rect2.layer.position = CGPointMake(rect2x, 350);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animate:(UIButton *)sender
{

    CABasicAnimation *animation1 = [CABasicAnimation animation];
    animation1.keyPath = @"position.y";
    if (((CALayer *)self.rect1.layer.presentationLayer).position.y != topYPosition) {
        animation1.fromValue = @(bottomYPosition);
        animation1.toValue = @(topYPosition);
    } else {
        animation1.fromValue = @(topYPosition);
        animation1.toValue = @(bottomYPosition);
    }
    animation1.duration = animationDuration;

    animation1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];

    [self.rect1.layer addAnimation:animation1 forKey:@"move"];
    self.rect1.layer.position = CGPointMake(rect1x, [animation1.toValue floatValue]);



    CABasicAnimation *animation2 = [CABasicAnimation animation];
    animation2.keyPath = @"position.y";
    if (((CALayer *)self.rect2.layer.presentationLayer).position.y != topYPosition) {
        animation2.fromValue = @(bottomYPosition);
        animation2.toValue = @(topYPosition);
    } else {
        animation2.fromValue = @(topYPosition);
        animation2.toValue = @(bottomYPosition);
    }
    animation2.duration = animationDuration;

    animation2.timingFunction = [CAMediaTimingFunction swiftOut];

    [self.rect2.layer addAnimation:animation2 forKey:@"move"];
    self.rect2.layer.position = CGPointMake(rect2x, [animation2.toValue floatValue]);

}
@end

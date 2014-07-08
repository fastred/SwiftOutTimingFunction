//
//  CAMediaTimingFunction+SwiftOut.m
//  AHKSwiftOutTimingFunction
//
//  Created by Arkadiusz on 08-07-14.
//  Copyright (c) 2014 Arkadiusz Holko. All rights reserved.
//

#import "CAMediaTimingFunction+SwiftOut.h"

@implementation CAMediaTimingFunction (SwiftOut)

+ (CAMediaTimingFunction *)swiftOut
{
    CGPoint controlPoint1 = CGPointMake(0.4, 0.0);
    CGPoint controlPoint2 = CGPointMake(0.2, 1.0);
    return [self functionWithControlPoints:controlPoint1.x :controlPoint1.y :controlPoint2.x :controlPoint2.y];
}

@end

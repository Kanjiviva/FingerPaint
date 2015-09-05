//
//  Lines.m
//  FingerPaintApp
//
//  Created by Steve on 2015-09-04.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)init
{
    self = [super init];
    if (self) {
        _path = [UIBezierPath new];
        _color = [UIColor blackColor];
    }
    return self;
}



@end

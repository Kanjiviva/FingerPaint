//
//  DrawingView.m
//  FingerPaintApp
//
//  Created by Steve on 2015-09-04.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "DrawingView.h"
#import "Line.h"

@implementation DrawingView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // Delegate function
//    UIBezierPath *path = [self.delegate path];
    NSMutableArray *paths = [self.delegate paths];
    
    for (Line *eachPath in paths) {

        [eachPath.color setStroke];
        [eachPath.path stroke];
        
    }
    
    
}


@end

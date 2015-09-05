//
//  Lines.h
//  FingerPaintApp
//
//  Created by Steve on 2015-09-04.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Line : NSObject

@property (strong, nonatomic) UIBezierPath *path;
@property (strong, nonatomic) UIColor *color;

@end

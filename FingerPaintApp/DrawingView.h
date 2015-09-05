//
//  DrawingView.h
//  FingerPaintApp
//
//  Created by Steve on 2015-09-04.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol DrawingViewDelegate <NSObject>

//-(UIBezierPath *)path;
-(NSMutableArray *)paths;

@end

@interface DrawingView : UIView

@property (strong, nonatomic) id<DrawingViewDelegate> delegate;

//@property (strong, nonatomic) ViewController *controller; // this way is bad!


@end

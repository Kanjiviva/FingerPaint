//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Steve on 2015-09-04.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import "Line.h"

@interface ViewController () <DrawingViewDelegate>

@property (weak, nonatomic) IBOutlet DrawingView *drawingView;
@property (nonatomic, strong) UIColor *currentColor;

@property (strong, nonatomic) Line *line;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.drawingView.delegate = self;
    
//    self.drawingView.backgroundColor = [UIColor orangeColor];
    
    self.paths = [NSMutableArray new];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    self.line = [Line new];
    
    self.line.color = self.currentColor;
    
    self.line.path.lineWidth = arc4random_uniform(100)/10.0;
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.drawingView];
    
    
    [self.line.path moveToPoint:touchLocation];
    
    [self.paths addObject:self.line];
    
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.drawingView];
    
    [self.line.path addLineToPoint:touchLocation];
    
    [self.drawingView setNeedsDisplay];
    
}


-(IBAction)changeColor:(id)sender {
    self.currentColor = [sender backgroundColor];
}
@end

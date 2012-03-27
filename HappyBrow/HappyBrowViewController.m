//
//  HappyBrowViewController.m
//  HappyBrow
//
//  Created by Lucas Fernandes on 26/03/12.
//  Copyright (c) 2012 Cammino Comunicação Online. All rights reserved.
//

#import "HappyBrowViewController.h"
#import "FaceView.h"

@interface HappyBrowViewController ()
@property (nonatomic, weak) IBOutlet FaceView *faceView;
@end

@implementation HappyBrowViewController
@synthesize faceView = _faceView;
@synthesize happiness = _happiness;

- (void)setHappiness:(int)happiness
{
    _happiness = happiness;
    [self.faceView setNeedsDisplay];
}

- (void)setFaceView:(FaceView *)faceView
{
    _faceView = faceView;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end

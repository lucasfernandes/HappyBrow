//
//  FaceView.h
//  HappyBrow
//
//  Created by Lucas Fernandes on 26/03/12.
//  Copyright (c) 2012 Cammino Comunicação Online. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView
@property (nonatomic) int touchesCount;
@property (nonatomic) CGFloat scale;
- (void)pinch:(UIPinchGestureRecognizer *)gesture;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
@end

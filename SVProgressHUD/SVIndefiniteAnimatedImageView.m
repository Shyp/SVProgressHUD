//
//  SVIndefiniteAnimatedImageView.m
//  SVProgressHUD
//
//  Created by Luis Ramirez on 10/4/15.
//
//

#import "SVIndefiniteAnimatedImageView.h"

@implementation SVIndefiniteAnimatedImageView

- (void)startAnimating {
    CGFloat duration = .75;
    CABasicAnimation* rotationAnimation;
    CAMediaTimingFunction *timingCurve = [CAMediaTimingFunction functionWithControlPoints:0.2 :0.1 :0.6 :.9];
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.fromValue = @0;
    rotationAnimation.toValue = @(M_PI*2);
    rotationAnimation.duration = duration;
    rotationAnimation.repeatCount = INFINITY;
    rotationAnimation.timingFunction = timingCurve;
    
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

- (void)stopAnimating {
    [self.layer removeAllAnimations];
}

@end

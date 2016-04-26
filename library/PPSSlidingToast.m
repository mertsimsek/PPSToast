//
//  PPSSlidingToast.m
//  PPSToast
//
//  Created by Orhun Mert Şimşek on 05/02/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import "PPSSlidingToast.h"

@implementation PPSSlidingToast

-(void) setDirection:(int)direction
{
    _direction = direction;
}

-(void) show{
    
    float screenWidth = [UIScreen mainScreen].bounds.size.width;
    float screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGRect initialRect;
    
    UIViewAnimationOptions curveStyle;
    
    
    UIView *toastView = [[UIView alloc] init];
    toastView.frame = CGRectMake(0, 0, screenWidth - 30, 50);
    
    UIColor *pastColor = _viewCont.view.backgroundColor;
    
    
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, screenWidth - 40, 50)];
    titleLabel.contentMode = UIViewContentModeCenter;
    titleLabel.numberOfLines = 0;
    [titleLabel setText:_title];
    [toastView addSubview:titleLabel];
    
    toastView.center = CGPointMake(screenWidth/2, screenHeight - 50);
    
    [toastView.layer setCornerRadius:20.0];
    toastView.backgroundColor = [UIColor whiteColor];
    toastView.layer.opacity = 0.5f;
    
    
    switch (_direction) {
        case fromLeftToRight:
            curveStyle = UIViewAnimationOptionCurveEaseIn;
            toastView.frame = CGRectMake(0 - toastView.frame.size.width, toastView.frame.origin.y, screenWidth - 30, 50);
            initialRect = toastView.frame;
            break;
            
        case fromRightToLeft:
            curveStyle = UIViewAnimationOptionCurveEaseOut;
            toastView.frame = CGRectMake(screenWidth, toastView.frame.origin.y, screenWidth - 30, 50);
            initialRect = toastView.frame;
            break;
        case fromUpToDown:
            curveStyle = UIViewAnimationOptionCurveEaseIn;
            toastView.frame = CGRectMake(toastView.frame.origin.x, 0 - toastView.frame.size.height, screenWidth - 30, 50);
            initialRect = toastView.frame;
            break;
        case fromDownToUp:
            curveStyle = UIViewAnimationOptionCurveEaseOut;
            toastView.frame = CGRectMake(toastView.frame.origin.x, screenHeight, screenWidth - 30, 50);
            initialRect = toastView.frame;
            break;
            
        default:
            curveStyle = UIViewAnimationOptionCurveEaseIn;
            toastView.frame = CGRectMake(0 - toastView.frame.size.width, toastView.frame.origin.y, screenWidth - 30, 50);
            initialRect = toastView.frame;
            break;
    }
    
    [_viewCont.view addSubview:toastView];
    
    [UIView animateWithDuration:2.0f delay:0.0 options:curveStyle
                     animations:^{
                         toastView.layer.opacity = 0.7f;
                         toastView.center = CGPointMake(screenWidth/2, screenHeight - 50);
                         _viewCont.view.backgroundColor = [UIColor colorWithRed:0.85f green:0.85f blue:0.85f alpha:0.5f];
                     }
                     completion:^(BOOL finished){
                         [NSThread sleepForTimeInterval:_duration];
                         
                         [UIView animateWithDuration:2.0f delay:0.0 options:curveStyle
                                          animations:^{
                                              titleLabel.layer.opacity = 0.0f;
                                              toastView.layer.opacity = 0.0f;
                                              toastView.frame = initialRect;
                                              _viewCont.view.backgroundColor = pastColor;
                                          }
                                          completion:^(BOOL finished){
                                              [toastView removeFromSuperview];
                                          }];
                         
                     }
     ];
    
}
-(void) showAfterDuration:(long)duration{
    
    [NSThread sleepForTimeInterval:duration];
    [self show];
    
}
@end

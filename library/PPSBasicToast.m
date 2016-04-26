//
//  PPSBasicToast.m
//  PPSToast
//
//  Created by Orhun Mert Şimşek on 05/02/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import "PPSBasicToast.h"

@implementation PPSBasicToast
-(void) show{
    
    float screenWidth = [UIScreen mainScreen].bounds.size.width;
    float screenHeight = [UIScreen mainScreen].bounds.size.height;
    
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
    toastView.layer.transform = CATransform3DMakeScale(0.85f, 0.85f, 0.85f);
    
    [_viewCont.view addSubview:toastView];
    
    [UIView animateWithDuration:2.0f delay:0.0 options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toastView.layer.opacity = 0.7f;
                         toastView.layer.transform = CATransform3DMakeScale(1, 1, 1);
                         _viewCont.view.backgroundColor = [UIColor colorWithRed:0.85f green:0.85f blue:0.85f alpha:0.5f];
                     }
                     completion:^(BOOL finished){
                         [NSThread sleepForTimeInterval:_duration];
                         
                         [UIView animateWithDuration:2.0f delay:0.0 options:UIViewAnimationOptionCurveEaseInOut
                                          animations:^{
                                              titleLabel.layer.opacity = 0.0f;
                                              toastView.layer.opacity = 0.0f;
                                              toastView.layer.transform = CATransform3DMakeScale(0.85f, 0.85f, 0.85f);
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

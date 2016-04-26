//
//  PPSToast.h
//  PPSToast
//
//  Created by Orhun Mert Şimşek on 05/02/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import <UIKit/UIKit.h>

#define fromLeftToRight 1
#define fromRightToLeft 2
#define fromUpToDown 3
#define fromDownToUp 4


@interface PPSToastParent : NSObject {
    NSString *_title;
    NSString *_message;
    UIImage *_image;
    long _duration;
    UIViewController *_viewCont;
    int _direction;
}




-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont;
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title;
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title message:(NSString*)message;
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title message:(NSString*)message toastImage:(UIImage*)image;
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title message:(NSString*)message toastImage:(UIImage*)image duration:(long)duration;

-(void) setTitle:(NSString*)title;
-(void) setMessage:(NSString*)message;
-(void) setToastImage:(UIImage*)image;
-(void) setDuration:(long)duration;
-(void) show;
-(void) showAfterDuration:(long)duration;


@end

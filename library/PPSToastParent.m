//
//  PPSToast.m
//  PPSToast
//
//  Created by Orhun Mert Şimşek on 05/02/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import "PPSToastParent.h"

@implementation PPSToastParent



-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont{
    
    self = [super init];
    
    if (self) {
        _viewCont = viewCont;
    }
    
    return self;
    
}
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title{
    
    self = [super init];
    
    if (self) {
        _viewCont = viewCont;
        _title = title;
    }
    
    return self;
    
}
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title message:(NSString*)message{
    
    self = [super init];
    
    if (self) {
        _viewCont = viewCont;
        _title = title;
        _message = message;
    }
    
    return self;
    
}
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title message:(NSString*)message toastImage:(UIImage*)image{
    
    self = [super init];
    
    if (self) {
        _viewCont = viewCont;
        _title = title;
        _message = message;
        _image = image;
    }
    
    return self;
    
}
-(PPSToastParent*) initWithViewController:(UIViewController *)viewCont title:(NSString*)title message:(NSString*)message toastImage:(UIImage*)image duration:(long)duration{
    
    self = [super init];
    
    if (self) {
        _viewCont = viewCont;
        _title = title;
        _message = message;
        _image = image;
        _duration = duration;
    }
    
    return self;
    
}

-(void)show {
    
}

-(void)showAfterDuration:(long)duration {
    
}

-(void) setTitle:(NSString*)title{
    
    _title = title;
    
}
-(void) setMessage:(NSString*)message{
    
    _message = message;
    
}
-(void) setToastImage:(UIImage*)image{
    
    _image = image;
    
}
-(void) setDuration:(long)duration{
    
    _duration = duration;
    
}


@end

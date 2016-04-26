[![Build Status](https://travis-ci.org/mertsimsek/PPSToast.svg?branch=master)](https://travis-ci.org/mertsimsek/PPSToast)
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

PPSToast
========

A basic toast message library for iOS. You can use and customize it. Pull requests are welcome.

Usage
-----

You can download the library folder and copy them into your project. Also you can install the library via CocoaPods by adding `pod 'PPSToast', '~> 1.0'` line to your Podfile. ([CocoaPods Page](https://cocoapods.org/pods/PPSToast))

After you added the library to your project, just import the base header. `#import "PPSToast.h"`

For now you can only use two types of Toasts: `PPSBasicToast` and `PPSSlidingToast`

```
PPSBasicToast *toast = [[PPSBasicToast alloc] initWithViewController:self];
[toast setTitle:@"TEST"];
[toast setDuration:2.0f];
[toast showAfterDuration:5.0f];
```

```
PPSSlidingToast *toast = [[PPSSlidingToast alloc] initWithViewController:self title:@"TEST"];
[toast setDuration:2.0f];
[toast setDirection:fromRightToLeft];
[toast show];
```

You can set some options for the Toast message:
```
-(void) setTitle:(NSString*)title
```

```
-(void) setMessage:(NSString*)message
```

```
-(void) setDuration:(long)duration
```

```
-(void) setDirection:(int)direction // Only for PPSSlidingToast
```

And you can show your Toast message with

```
[toast show];
```

or

```
[toast showAfterDuration:5.0f];
```


License
-------

    Copyright (C) 2016 Orhun Mert Simsek

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

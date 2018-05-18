
# CCFont for iOS && OSX
=======================

[英文README](README.md)

简单支持 MAC OSX [>=10.9] 和 iOS [>=8]

[https://github.com/ccworld1000/CCFont.git](https://github.com/ccworld1000/CCFont.git)

##bug 
邮件 ： <a href="mailto:ccworld1000@gmail.com">ccworld1000@gmail.com</a>

## 截图 1

### OSX
![CCFont CCFontMac Screenshot](https://github.com/ccworld1000/CCFont/blob/master/CCFontMac.gif?raw=true)

### iOS
![CCFont CCFontiOS Screenshot](https://github.com/ccworld1000/CCFont/blob/master/CCFontiOS.gif?raw=true)

## CCFont
CCFont 简单支持 machosx 与 iOS, 可以简单取代 NSFont 或者 UIFont.

## CCColor
CCColor 单支持  machosx 与 iOS, 可以简单取代 NSColor 或者 UIColor 十六进制字符串.

## Podfile

```ruby
pod 'CCFont'
```

## 用法
```objective-c
#import <CCUtilities.h>
```
# 或
```objective-c
#import <CCFont/CCUtilities.h>
```
# 演示代码
```objective-c
    HSView *p = superView;
    __block NSUInteger index = 0;
    
    CGFloat space, height, width;
    space = height = 40;
    width = 400;
    

    dispatch_async(dispatch_get_main_queue(), ^{
        while (index < 10) {
            NSInteger i = 10 + index++;
            
            NSString *leftText = [NSString stringWithFormat:@"L : CCFont %ld",  i];
            NSString *rightText = [NSString stringWithFormat:@"R : CCFont %ld",  i];
            
#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
            UILabel *l = [UILabel new];
            UILabel *r = [UILabel new];
            l.text = leftText;
            r.text = rightText;
#else
            NSTextField *l = [NSTextField new];
            NSTextField *r = [NSTextField new];
            
            l.stringValue = leftText;
            r.stringValue = rightText;
#endif
            
            l.font = [CCFont systemFontOfSize: i];
            r.font = [CCFont systemFontOfSize: CCHalf(i)];
            
            if (index % 2) {
                l.textColor = [CCColor colorWithHexString:[NSString stringWithFormat:@"%f%lx%lx", 255 / (index * 1.), index * 4, index * 8]];
                r.textColor = [CCColor colorWithHexString:[NSString stringWithFormat:@"%f%lx%lx", 255 / (index * 1.), index * 4, index * 8]];
            } else {
                l.textColor = [CCColor colorWithHexString:[NSString stringWithFormat:@"%lx%x%lx", index * 4, 255, index * 8]];
                r.textColor = [CCColor colorWithHexString:[NSString stringWithFormat:@"%lx%x%lx", index * 4, 255, index * 8]];
            }
            
            l.frame = CGRectMake(CCHalf(space), index * height, CCHalf(width), height);
            r.frame = CGRectMake(CCHalf(width + space), index * height, CCHalf(width), height);
            
            [p addSubview: l];
            [p addSubview: r];
        }
    });

```

## MIT 许可证
MIT License

Copyright (c) 2016-now ccworld1000 | bug : <a href="mailto:ccworld1000@gmail.com">ccworld1000@gmail.com</a>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


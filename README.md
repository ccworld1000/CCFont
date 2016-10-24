
# HSFont for iOS && OSX
=======================

simple support machosx [>=10.9] and iOS [>=8]

[https://github.com/ccworld1000/HSFont.git](https://github.com/ccworld1000/HSFont.git)

## Screenshot 1

### OSX
![HSFont HSFontMac Screenshot](HSFontMac.gif)

### iOS
![HSFont HSFontiOS Screenshot](HSFontiOS.gif)

## HSFont
HSFont simple support machosx and iOS, can simple replace NSFont or UIFont.

## HSColor
HSColor simple support machosx and iOS, can simple replace NSColor or UIColor hex string.

## Podfile

```ruby
pod 'HSFont'
```

## usage
```obj-c
#import <HSUtilities.h>
```
```obj-c
    __block NSUInteger index = 0;
    dispatch_async(dispatch_get_main_queue(), ^{
        while (index < 10) {
            NSInteger i = 10 + index++;
            
            UILabel *l = [UILabel new];
            l.text = [NSString stringWithFormat:@"HSFont %ld",  i];
            l.font = [HSFont systemFontOfSize: i];
            if (index % 2) {
                l.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%x%x%x", 255, index * 4, index * 8]];
            } else {
                l.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%x%x%x", index * 4, 255, index * 8]];
            }
            
            l.frame = CGRectMake(100, index * 40, 100, 40);
            
            [self.view addSubview: l];
        }
    });
```

## MIT License
MIT License

Copyright (c) 2016 ccworld1000

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


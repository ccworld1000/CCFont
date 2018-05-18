//
//  CCFontTest.m
//  CCFontDemo
//
//  Created by dengyouhua on 17/2/6.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "CCFontTest.h"
#import <CCUtilities.h>

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
#define HSView  UIView
#else
#import <Cocoa/Cocoa.h>
#define HSView NSView
#endif

@implementation CCFontTest

+ (void) viewDidLoadTest : (id) superView {
    if (!superView) {
        NSLog(@"view is nil");
        return;
    }
    
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
            
            if (index == 10) {
                l.textColor = CCColorRGB(90, 90, 90);
//                l.textColor = CCColorRGB(0, 90, 90);
                l.textColor = CCColorRGB(255, 0, 0);
                l.textColor = CCColorRGB(0, 255, 0);
                l.textColor = CCColorRGB(0, 0, 255);
            }
            
            l.frame = CGRectMake(CCHalf(space), index * height, CCHalf(width), height);
            r.frame = CGRectMake(CCHalf(width + space), index * height, CCHalf(width), height);
            
            [p addSubview: l];
            [p addSubview: r];
        }
    });
}

@end

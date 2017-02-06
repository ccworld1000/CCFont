//
//  HSFontTest.m
//  HSFontDemo
//
//  Created by dengyouhua on 17/2/6.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "HSFontTest.h"
#import <HSUtilities.h>

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
#define HSView  UIView
#else
#import <Cocoa/Cocoa.h>
#define HSView NSView
#endif

@implementation HSFontTest

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
            
            NSString *leftText = [NSString stringWithFormat:@"L : HSFont %ld",  i];
            NSString *rightText = [NSString stringWithFormat:@"R : HSFont %ld",  i];
            
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
            
            l.font = [HSFont systemFontOfSize: i];
            r.font = [HSFont systemFontOfSize: accommon_calc_dimension(i)];
            
            if (index % 2) {
                l.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%f%lx%lx", 255 / (index * 1.), index * 4, index * 8]];
                r.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%f%lx%lx", 255 / (index * 1.), index * 4, index * 8]];
            } else {
                l.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%lx%x%lx", index * 4, 255, index * 8]];
                r.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%lx%x%lx", index * 4, 255, index * 8]];
            }
            
            l.frame = CGRectMake(accommon_calc_dimension(space), index * height, accommon_calc_dimension(width), height);
            r.frame = CGRectMake(accommon_calc_dimension(width + space), index * height, accommon_calc_dimension(width), height);
            
            [p addSubview: l];
            [p addSubview: r];
        }
    });
}

@end

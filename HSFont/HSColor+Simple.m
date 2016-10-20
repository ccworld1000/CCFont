//
//  HSColor+Simple.m
//  HSFontiOS
//
//  Created by dengyouhua on 16/10/20.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "HSColor+Simple.h"

@implementation HSColor (Simple)

+ (HSColor *)colorWithHexString: (NSString *)hexString {
    return [self colorWithHexString:hexString alpha:1.0f];
}

+ (HSColor *)colorWithHexString: (NSString *)hexString alpha:(CGFloat)alpha {
    NSUInteger rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    if ( [hexString hasPrefix:@"#"] ) {
        [scanner setScanLocation:1];
    }
    [scanner scanHexInt:(unsigned int *)&rgbValue];
    
    CGFloat red   = ((rgbValue & 0xff0000) >> 16) / 255.0f;
    CGFloat green = ((rgbValue & 0x00ff00) >>  8) / 255.0f;
    CGFloat blue  = ((rgbValue & 0x0000ff)      ) / 255.0f;
    
    return [HSColor colorWithRed:red green:green blue:blue alpha: alpha];
}

@end

//
//  HSColor+Simple.m
//  HSFontiOS
//
//  Created by dengyouhua on 16/10/20.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "HSColor+Simple.h"

HSColor * HSColorRGB(NSInteger r, NSInteger g, NSInteger b) {
    return HSColorRGBWithAlpha(r, g, b, 1);
}

HSColor * HSColorRGBWithAlpha(NSInteger r, NSInteger g, NSInteger b, CGFloat alpha) {
    CGFloat a = alpha;

    if (a < 0) {
        a = 0;
    } else if (a > 1) {
        a = 1;
    }

    return [HSColor colorWithRed:r / 255. green:g / 255. blue:b / 255. alpha:a];
}

HSColor * HSColorWithHexString(NSString * hexString) {
    return [HSColor colorWithHexString:hexString];
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wincomplete-implementation"

@implementation HSColor (Simple)

+ (HSColor *) colorWithHexString:(NSString *)hexString {
    return [self colorWithHexString:hexString alpha:1.0f];
}

+ (HSColor *) colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    NSUInteger rgbValue = 0;
    NSScanner * scanner = [NSScanner scannerWithString:hexString];

    if ( [hexString hasPrefix:@"#"] ) {
        [scanner setScanLocation:1];
    }
    [scanner scanHexInt:(unsigned int *)&rgbValue];

    CGFloat red   = ((rgbValue & 0xff0000) >> 16) / 255.0f;
    CGFloat green = ((rgbValue & 0x00ff00) >>  8) / 255.0f;
    CGFloat blue  = ((rgbValue & 0x0000ff)      ) / 255.0f;

    return [HSColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end

#pragma clang diagnostic pop


//
//  HSColor+Simple.h
//  HSFontiOS
//
//  Created by dengyouhua on 16/10/20.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "HSUtilities.h"

/**
 *  HSColorRGBWithAlpha  | r,g,b [0 - 255] alpha [0 - 1] [C Style]
 *
 *  @param r     r description
 *  @param g     g description
 *  @param b     b description
 *  @param alpha alpha description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT HSColor * HSColorRGBWithAlpha (NSInteger r, NSInteger g, NSInteger b, CGFloat alpha);

/**
 *  HSColorRGB | r,g,b [0 - 255] [C Style]
 *
 *  @param r r description
 *  @param g g description
 *  @param b b description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT HSColor * HSColorRGB (NSInteger r, NSInteger g, NSInteger b);

/**
 *  HSColorWithHexString | [C Style]
 *
 *  @param hexString hexString description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT HSColor * HSColorWithHexString (NSString *hexString);



@interface HSColor (Simple)

/**
 *  colorWithHexString
 *
 *  @param hexString hexString description
 *
 *  @return return value description
 */
+ (HSColor *)colorWithHexString: (NSString *)hexString;

/**
 *  colorWithHexString alpha
 *
 *  @param hexString hexString description
 *  @param alpha     alpha description
 *
 *  @return return value description
 */
+ (HSColor *)colorWithHexString: (NSString *)hexString alpha:(CGFloat)alpha;

+ (HSColor *)blackColor;
+ (HSColor *)darkGrayColor;
+ (HSColor *)lightGrayColor;
+ (HSColor *)whiteColor;
+ (HSColor *)grayColor;
+ (HSColor *)redColor;
+ (HSColor *)greenColor;
+ (HSColor *)blueColor;
+ (HSColor *)cyanColor;
+ (HSColor *)yellowColor;
+ (HSColor *)magentaColor;
+ (HSColor *)orangeColor;
+ (HSColor *)purpleColor;
+ (HSColor *)brownColor;
+ (HSColor *)clearColor;

+ (HSColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
+ (HSColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;
+ (HSColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (HSColor *)colorWithCGColor:(CGColorRef)cgColor;

- (HSColor *)colorWithAlphaComponent:(CGFloat)alpha;

- (void)set;
- (void)setFill;
- (void)setStroke;

@end

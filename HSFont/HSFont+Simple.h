//
//  HSFont+Simple.h
//  HSFont
//
//  Created by dengyouhua on 16/10/19.
//  Copyright © 2016年 cc ccworld1000@gmail.com. All rights reserved.
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
#define HSFont UIFont
#else
#import <Cocoa/Cocoa.h>
#define HSFont NSFont
#endif

@interface HSFont (Simple)

/**
 *  fontWithName
 *
 *  @param fontName fontName description
 *  @param fontSize fontSize description
 *
 *  @return return value description
 */
+ (HSFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize;

/**
 *  systemFontOfSize
 *
 *  @param fontSize fontSize description
 *
 *  @return return value description
 */
+ (HSFont *)systemFontOfSize:(CGFloat)fontSize;

/**
 *  boldSystemFontOfSize
 *
 *  @param fontSize fontSize description
 *
 *  @return return value description
 */
+ (HSFont *)boldSystemFontOfSize:(CGFloat)fontSize;


@end

//
//  HSFont+Simple.h
//  HSFont
//
//  Created by dengyouhua on 16/10/19.
//  Copyright © 2016年 cc ccworld1000@gmail.com. All rights reserved.
//

#import "HSUtilities.h"

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

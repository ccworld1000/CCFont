//
//  HSUtilities.h
//  HSFontiOS
//
//  Created by dengyouhua on 16/10/24.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#ifndef HSUtilities_h
#define HSUtilities_h

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
    #import <UIKit/UIKit.h>
    #define HSFont UIFont
    #define HSColor UIColor
#else
    #import <Cocoa/Cocoa.h>
    #define HSFont NSFont
    #define HSColor NSColor
#endif

#import <Foundation/Foundation.h>

#import "accommon.h"
#import "HSFont+Simple.h"
#import "HSColor+Simple.h"


#endif /* HSUtilities_h */

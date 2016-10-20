//
//  ViewController.m
//  HSFontMac
//
//  Created by dengyouhua on 16/10/20.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    // Do any additional setup after loading the view.
    
    __block NSUInteger index = 0;
    dispatch_async(dispatch_get_main_queue(), ^{
        while (index < 10) {
            NSInteger i = 10 + index++;
            
            NSTextField *l = [NSTextField new];
            l.stringValue = [NSString stringWithFormat:@"HSFont %ld",  i];
            l.font = [HSFont systemFontOfSize: i];
            if (index % 2) {
                l.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%x%x%x", 255, index * 4, index * 8]];
            } else {
                l.textColor = [HSColor colorWithHexString:[NSString stringWithFormat:@"%x%x%x", index * 4, 255, index * 8]];
            }
            
            l.frame = CGRectMake(100, -index * 40, 100, 40);
            
            [self.view addSubview: l];
        }
    });
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end

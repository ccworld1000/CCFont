//
//  ViewController.m
//  CCFontMac
//
//  Created by dengyouhua on 17/2/6.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import "CCFontTest.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    [CCFontTest viewDidLoadTest: self.view];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end

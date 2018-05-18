//
//  ViewController.m
//  CCFontiOS
//
//  Created by dengyouhua on 17/2/6.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import "CCFontTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     [CCFontTest viewDidLoadTest: self.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

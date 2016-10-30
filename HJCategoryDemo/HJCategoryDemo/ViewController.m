//
//  ViewController.m
//  HJCategoryDemo
//
//  Created by 黄健 on 2016/10/29.
//  Copyright © 2016年 黄健. All rights reserved.
//

#import "ViewController.h"
#import <HJCategory/NSString+MD5.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString * string = @"123456";
    
    NSString * md5_string = [string md5];
    
    NSLog(@"MD5:  %@", md5_string);
}

@end

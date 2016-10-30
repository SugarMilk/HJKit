//
//  ViewController.m
//  HJManagerKitDemo
//
//  Created by huangjian on 16/10/28.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import "ViewController.h"
#import <HJManagerKit/HJNetworkManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NetworkConnection * conn = [NetworkConnection listen];
    
    NSLog(@"connectionStatus:     %ld", conn.connectionStatus);
    NSLog(@"isConnected:          %d", conn.isConnected);
    NSLog(@"isConnectedByWWAN:    %d", conn.isConnectedByWWAN);
    NSLog(@"isConnectedByWIFI:    %d", conn.isConnectedByWIFI);
}

@end

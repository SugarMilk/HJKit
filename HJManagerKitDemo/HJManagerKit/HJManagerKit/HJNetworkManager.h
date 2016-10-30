//
//  HJNetworkManager.h
//  HJManagerKit
//
//  Created by huangjian on 16/10/28.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"

typedef NS_ENUM(NSInteger, NetworkConnectionStatus) {
    NetworkConnectionStatusOff,
    NetworkConnectionStatusWWAN,
    NetworkConnectionStatusWIFI,
};

extern NSString * kNetworkConnectionStatusChangedNotification;

@interface NetworkConnection : Reachability

@property (nonatomic, assign, readonly) BOOL isConnected;
@property (nonatomic, assign, readonly) BOOL isConnectedByWWAN;
@property (nonatomic, assign, readonly) BOOL isConnectedByWIFI;
@property (nonatomic, assign, readonly) NetworkConnectionStatus connectionStatus;

+ (instancetype)listen;
+ (instancetype)listenWithHostName:(NSString *)hostName;

- (BOOL)startMonitor;
- (void)stopMonitor;

@end

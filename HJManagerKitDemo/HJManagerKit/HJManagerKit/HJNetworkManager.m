//
//  HJNetworkManager.m
//  HJManagerKit
//
//  Created by huangjian on 16/10/28.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import "HJNetworkManager.h"

NSString * kNetworkConnectionStatusChangedNotification = @"kNetworkReachabilityChangedNotification";

@implementation NetworkConnection

+ (instancetype)listen {
    return [NetworkConnection reachabilityForInternetConnection];
}

+ (instancetype)listenWithHostName:(NSString *)hostName {
    return [NetworkConnection reachabilityWithHostName:hostName];
}

- (BOOL)startMonitor {
    return [self startNotifier];
}

- (void)stopMonitor {
    return [self stopNotifier];
}

- (BOOL)isConnected {
    return [self connectionStatus] != NetworkConnectionStatusOff;
}

- (BOOL)isConnectedByWWAN {
    return [self connectionStatus] == NetworkConnectionStatusWWAN;
}

- (BOOL)isConnectedByWIFI {
    return [self connectionStatus] == NetworkConnectionStatusWIFI;
}

- (NetworkConnectionStatus)connectionStatus {
    NetworkConnectionStatus status;
    
    switch ([self currentReachabilityStatus]) {
        case NotReachable:
            status = NetworkConnectionStatusOff;
            break;
        case ReachableViaWWAN:
            status = NetworkConnectionStatusWWAN;
            break;
        case ReachableViaWiFi:
            status = NetworkConnectionStatusWIFI;
            break;
        default:
            break;
    }
    
    return status;
}

@end

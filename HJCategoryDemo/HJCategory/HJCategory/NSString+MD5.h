//
//  NSString+MD5.h
//  HJCategory
//
//  Created by 黄健 on 2016/10/29.
//  Copyright © 2016年 黄健. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)   // MD5加密算法

/**
 * @return 返回该字符串的32位字符十六进制小写的MD5加密算法字符串
 */
- (NSString *)md5;

@end

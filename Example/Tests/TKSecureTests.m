//
//  TKSecureTests.m
//  TKSecureCategory
//
//  Created by 云峰李 on 2017/8/24.
//  Copyright © 2017年 thinkWind. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import <TKSecureCategory/TKSecureCategory.h>

SPEC_BEGIN(secureCategoryTests)

describe(@"测试组件件调用.", ^{
    it(@"测试基本的Base64 调用", ^{
        NSString* ret = [@"test" base64String];
        NSLog(@"加密的结果为%@",ret);
        NSString* convert = [ret decodingStringFromBase64];
        [[convert should] equal:@"test"];
    });
});

SPEC_END

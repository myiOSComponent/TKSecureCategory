//
//  TKSecureCategory.m
//  Pods
//
//  Created by 云峰李 on 2017/8/28.
//
//

#import "TKSecureCategory.h"
#import <TKMiddleware/TKMiddleware.h>

static NSString* const kTKSecureTarget = @"Secure";
static NSString* const kTKSecureContent = @"content";
static NSString* const kTKSecureKey = @"secureKey";
static NSString* const kTKSecureKiv = @"securKiv";

#pragma mark - Base64

@implementation NSString (TKBase64)

- (NSString *)base64String
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"base64StringFromString"
                        params:@{kTKSecureContent:self}
             shouldCacheTarget:YES];
}

- (NSData *)base64Data
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"base64DataFromString"
                        params:@{kTKSecureContent : self}
             shouldCacheTarget:YES];
}

- (NSString *)decodingStringFromBase64
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"decodingStringFromBase64String"
                        params:@{kTKSecureContent : self}
             shouldCacheTarget:YES];
}

- (NSData *)decodingDataFromBase64
{
    return [TKMiddleWareMgr performTarget:kTKSecureContent
                        action:@"decodingDataFromBase64String"
                        params:@{kTKSecureContent : self}
             shouldCacheTarget:YES];
}

@end

@implementation NSData (TKBase64)

- (NSString *)base64String
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"base64StringFromData"
                        params:@{kTKSecureContent:self}
             shouldCacheTarget:YES];
}

@end

#pragma mark - MD5

@implementation NSString (TKMD5)

- (NSString *)md5
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"md5"
                        params:@{kTKSecureContent:self}
             shouldCacheTarget:YES];
}

@end

#pragma mark - DES

@implementation NSString (TKDES)

- (NSString *)desEncodingWithKey:(NSString *)key kvi:(NSString *)kvi
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"desEncoding"
                        params:@{kTKSecureContent:self,
                                 kTKSecureKey:key,
                                 kTKSecureKiv:kvi}
             shouldCacheTarget:YES];
}

- (NSString *)desDecodingWIthKey:(NSString *)key kvi:(NSString *)kvi
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"desDecoding"
                        params:@{kTKSecureContent:self,
                                 kTKSecureKey:key,
                                 kTKSecureKiv:kvi}
             shouldCacheTarget:YES];
}

@end

#pragma mark - AES

@implementation NSString (TKAES)

- (NSString *)aesEncodingWithKey:(NSString *)key
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"aesEncoding"
                        params:@{kTKSecureContent:self,
                                 kTKSecureKey:key}
             shouldCacheTarget:YES];
}

- (NSString *)aesDecodingWithKey:(NSString *)key
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"aesDecoding"
                        params:@{kTKSecureContent:self,
                                 kTKSecureKey : key}
             shouldCacheTarget:YES];
}

@end

#pragma mark - RSA

@implementation TKRSATools

- (void)loadPublicKeyWithFilePath:(NSString *)filePath
{
    [TKMiddleWareMgr performTarget:kTKSecureTarget
                 action:@"loadPublicKeyWithFilePath"
                 params:@{kTKSecureContent : filePath}
      shouldCacheTarget:YES];
}

- (void)loadPrivateKeyWithFilePath:(NSString *)filePath password:(NSString *)password
{
    [TKMiddleWareMgr performTarget:kTKSecureTarget
                 action:@"loadPrivateKeyWithFilePath"
                 params:@{kTKSecureContent : filePath,
                          kTKSecureKey:password}
      shouldCacheTarget:YES];
}

- (NSData *)RSAEncodingData:(NSData *)data
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"RSAEncodingData"
                        params:@{kTKSecureContent:data}
             shouldCacheTarget:YES];
}

- (NSString *)RSAEncodingString:(NSString *)string
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"RSAEncodingString"
                        params:@{kTKSecureContent:string}
             shouldCacheTarget:YES];
}

- (NSData *)RSADecodingData:(NSData *)data
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"RSADecodingData"
                        params:@{kTKSecureContent:data}
             shouldCacheTarget:YES];
}

- (NSString *)RSADecodingString:(NSString *)string
{
    return [TKMiddleWareMgr performTarget:kTKSecureTarget
                        action:@"RSADecodingString"
                        params:@{kTKSecureContent:string}
             shouldCacheTarget:YES];
}

@end

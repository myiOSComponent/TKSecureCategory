//
//  TKSecureCategory.h
//  Pods
//
//  Created by 云峰李 on 2017/8/28.
//
//

#import <Foundation/Foundation.h>

#pragma mark - Base64

@interface NSString (TKBase64)
/**
 将普通string 转换成 base64 string
 
 @return base64 string
 */
- (NSString *)base64String;

/**
 将字符串转换成base64 的data

 @return base64 data
 */
- (NSData *)base64Data;

/**
 将base64 解码成普通字符串

 @return 字符串
 */
- (NSString *)decodingStringFromBase64;


/**
 将base64 字符串解码成data

 @return 普通data数据
 */
- (NSData *)decodingDataFromBase64;

@end

@interface NSData (TKBase64)

/**
 将普通二进制数据转换成base64字符串

 @return base64字符串
 */
- (NSString *)base64String;

@end

#pragma mark - MD5

@interface NSString (TKMD5)

- (NSString *)md5;

@end

#pragma mark - DES

@interface NSString (TKDES)

- (NSString *)desEncodingWithKey:(NSString *)key kvi:(NSString *)kvi;

- (NSString *)desDecodingWIthKey:(NSString *)key kvi:(NSString *)kvi;

@end

#pragma mark - AES

@interface NSString (TKAES)

- (NSString *)aesEncodingWithKey:(NSString *)key;

- (NSString *)aesDecodingWithKey:(NSString *)key;

@end

#pragma mark - RSA

@interface TKRSATools : NSObject


- (void)loadPublicKeyWithFilePath:(NSString *)filePath;

- (void)loadPrivateKeyWithFilePath:(NSString *)filePath password:(NSString *)password;

- (NSData *)RSAEncodingData:(NSData *)data;

- (NSString *)RSAEncodingString:(NSString *)string;

- (NSData *)RSADecodingData:(NSData *)data;

- (NSString *)RSADecodingString:(NSString *)string;

@end

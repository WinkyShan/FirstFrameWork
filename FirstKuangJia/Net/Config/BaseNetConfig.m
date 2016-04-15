//
//  BaseNetConfig.m
//  EstateBiz
//
//  Created by Ender on 10/26/15.
//  Copyright © 2015 Magicsoft. All rights reserved.
//

#import "BaseNetConfig.h"
#import <YTKNetworkConfig.h>
#import "BaseUrlFilter.h"

#define BASE_URL_1 @"https://api.kakatool.com/v1/"      //正式环境
#define BASE_URL_2 @"http://192.168.0.169/v1/"          //内部测试服务器
#define BASE_URL_3 @"http://test.kakatool.com:8080/v1/" //外部测试服务器


/**
 *教程：https://github.com/yuantiku/YTKNetwork/blob/master/BasicGuide.md
 *https://github.com/yuantiku/YTKNetwork/blob/master/ProGuide.md
 *
 */
 

@implementation BaseNetConfig

+(BaseNetConfig *)shareInstance
{
    
    static id baseNetConfig = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
       
        baseNetConfig = [[self alloc] init];
        
    });
    return baseNetConfig;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)configGlobalAPI
{
    YTKNetworkConfig *config = [YTKNetworkConfig sharedInstance];
    config.baseUrl=BASE_URL_1;
    config.cdnUrl=@"";
    BaseUrlFilter *filter = [BaseUrlFilter filterWithArguments:nil];
    [config addUrlFilter:filter];
    
}


@end

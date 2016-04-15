//
//  BaseUrlFilter.m
//  EstateBiz
//
//  Created by Ender on 10/26/15.
//  Copyright © 2015 Magicsoft. All rights reserved.
//

#import "BaseUrlFilter.h"
#import "UIDevice+MacAddress.h"
#import "UIDevice+Hardware.h"
#import "NSString+helper.h"

@implementation BaseUrlFilter{
    
    NSDictionary *_arguments;
}


+ (BaseUrlFilter *)filterWithArguments:(NSDictionary *)arguments {
    
    if (arguments==nil) {
        
        NSString *device = [[UIDevice currentDevice] macaddress];
        NSString *ver = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
        NSString *model = [[[UIDevice currentDevice] platformString] trim];
        NSString *platform =@"sbios";
        NSString *sdkver = [[UIDevice currentDevice] systemVersion];
//        NSString *token =[LocalDataAccessor getAccessToken];//[LocalDataAccessor getAccessToken];
        NSString *ct=@"b";
        
        return [[self alloc] initWithArguments:@{@"device":device,@"ver":ver,@"model":model
                                                 ,@"platform":platform,@"sdkver":sdkver,
                                                 @"token":@"",@"ct":ct,@"appid":APP_ID}];
        
    }
    else{
         return [[self alloc] initWithArguments:arguments];
    }
   
}

- (id)initWithArguments:(NSDictionary *)arguments {
    self = [super init];
    if (self) {
        _arguments = arguments;
    }
    return self;
}

- (NSString *)filterUrl:(NSString *)originUrl withRequest:(YTKBaseRequest *)request {
    NSLog(@"arguments:%@",_arguments);
    return [YTKNetworkPrivate urlStringWithOriginUrlString:originUrl appendParameters:_arguments];
}

@end

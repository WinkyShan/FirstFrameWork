//
//  BaseUrlFilter.h
//  EstateBiz
//
//  Created by Ender on 10/26/15.
//  Copyright © 2015 Magicsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YTKNetworkConfig.h>
#import <YTKNetworkPrivate.h>

@interface BaseUrlFilter : NSObject<YTKUrlFilterProtocol>

+ (BaseUrlFilter *)filterWithArguments:(NSDictionary *)arguments;
- (NSString *)filterUrl:(NSString *)originUrl withRequest:(YTKBaseRequest *)request;

@end

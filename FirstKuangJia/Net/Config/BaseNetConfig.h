//
//  BaseNetConfig.h
//  EstateBiz
//
//  Created by Ender on 10/26/15.
//  Copyright © 2015 Magicsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseNetConfig : NSObject

+(BaseNetConfig *)shareInstance;

-(void)configGlobalAPI;

@end

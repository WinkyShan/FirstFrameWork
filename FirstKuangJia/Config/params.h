//
//  params.h
//  CardToon
//
//  Created by Austin on 7/18/13.
//  Copyright (c) 2013 com.coortouch.ender. All rights reserved.


//TODO:如发布appstore版本，必须修改为1
//是否为appstore发布(0为企业内发布，1为appstore发布)
//#define IS_APPSTORE 0  //通过target来自动设置

#define APP_ID @"202"

//不同社区应用不同，区分appstore版本和企业版本
#define APP_PLATFORM IS_APPSTORE?@"wtownios":@"wtownhouse"



//
//   ______    ______    ______    
//  /\  __ \  /\  ___\  /\  ___\   
//  \ \  __<  \ \  __\_ \ \  __\_ 
//   \ \_____\ \ \_____\ \ \_____\ 
//    \/_____/  \/_____/  \/_____/ 
//
//  Powered by BeeFramework
//
//
//  B2_TableBoard_iPhone.h
//  BeeFrameworkOne
//
//  Created by Chenyun on 15/3/13.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "Bee.h"

#pragma mark -
/*
 * 这个页面,用来显示一个tableview样式的视图
 */
@interface B2_TableBoard_iPhone : BeeUIBoard
AS_OUTLET( BeeUIScrollView, list )
@end

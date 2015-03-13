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
//  B0_IndexBoard_iPhone.h
//  BeeFrameworkOne
//
//  Created by Chenyun on 1/13/15.
//  Copyright (c) 2015 geek-zoo. All rights reserved.
//

#import "Bee.h"

#pragma mark -

@interface B0_IndexBoard_iPhone : BeeUIBoard
// 相当于设置属性  @property (nonatomic, strong) BeeUIButton * mask
AS_OUTLET( BeeUIButton, mask )  // 这里名称需要和xml中的id相同
@end

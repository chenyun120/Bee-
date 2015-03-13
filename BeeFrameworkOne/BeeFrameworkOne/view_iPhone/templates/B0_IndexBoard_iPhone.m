//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  B0_IndexBoard_iPhone.m
//  BeeFrameworkOne
//
//  Created by Chenyun on 1/13/15.
//  Copyright (c) 2015 geek-zoo. All rights reserved.
//

#import "B0_IndexBoard_iPhone.h"
#import "B1_Board_iPhone.h"

#pragma mark -

@interface B0_IndexBoard_iPhone()
@end

@implementation B0_IndexBoard_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

- (void)load
{
}

- (void)unload
{
}

#pragma mark - Signal

ON_CREATE_VIEWS( signal )
{
	self.view.backgroundColor = HEX_RGB(0x333);
	
	
	// 页面中显示的按钮   在xml中定义了
}

ON_DELETE_VIEWS( signal )
{
}

ON_LAYOUT_VIEWS( signal )
{
}

ON_WILL_APPEAR( signal )
{
}

ON_DID_APPEAR( signal )
{
}

ON_WILL_DISAPPEAR( signal )
{
}

ON_DID_DISAPPEAR( signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, LEFT_TOUCHED, signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
}

// 具体的点击响应方式可以断点查看过程   这里mask作为button的id   通过它作为关键来响应
ON_SIGNAL3( B0_IndexBoard_iPhone, mask, signal )
{
	// 点击跳转页面
	[self.stack pushBoard:[B1_Board_iPhone board] animated:YES];
}

@end

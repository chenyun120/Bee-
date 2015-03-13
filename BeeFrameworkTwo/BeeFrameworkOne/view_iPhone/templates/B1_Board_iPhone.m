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
//  B1_Board_iPhone.m
//  BeeFrameworkOne
//
//  Created by Chenyun on 15/2/10.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "B1_Board_iPhone.h"
#import "B2_TableBoard_iPhone.h"

#pragma mark -

@interface B1_Board_iPhone()
{
	
}
@end

@implementation B1_Board_iPhone

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
	// 设置背景颜色
	self.view.backgroundColor = HEX_RGB(0xfff);
	
	// 显示navigationController
	self.navigationBarShown = YES;
	self.navigationBarTitle = @"Title";
	
	// 页面中显示的按钮样式， 在xml中定义了
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

ON_SIGNAL3( B1_Board_iPhone, mask, signal )
{
	// 返回上级页面
	[self.stack popBoardAnimated:YES];
}

ON_SIGNAL3( B1_Board_iPhone, maskTwo, signal )
{
	// 进入下级页面
	[self.stack pushBoard:[B2_TableBoard_iPhone board] animated:YES];
}

@end

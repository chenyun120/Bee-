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
//  AppBoard_iPhone.m
//  BeeFrameworkOne
//
//  Created by Chenyun on 15/1/8.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "AppBoard_iPhone.h"
#import "B0_IndexBoard_iPhone.h"

#pragma mark -

@implementation AppBoard_iPhone
{
	BeeUIRouter *	_router;
}

DEF_SINGLETON( AppBoard_iPhone )

- (void)load
{
}

- (void)unload
{
}

#pragma mark Signal

// 相当于- (void)viewDidLoad
ON_CREATE_VIEWS( signal )
{
	// 这里的BeeUIRouter作为一个控制器使用   可以把多个视图控制器加载到router上面，通过它做一些  切换 显示  等操作
	_router = [BeeUIRouter sharedInstance];

	_router.parentBoard = self;

	// 把B0_IndexBoard_iPhone 加载到router上  可以添加多个，方式相同
	[_router map:@"index" toClass:[B0_IndexBoard_iPhone class]];
	
	// open方法用来显示指定的仕途控制器
	[_router open:@"index"];

	// 将router加载到根视图控制器上
	[self.view addSubview:_router.view];
}

// 相当于- (void)viewDidUnload
ON_DELETE_VIEWS( signal )
{
	
}

// 相当于 - (void)viewWillAppear:(BOOL)animated
ON_LAYOUT_VIEWS( signal )
{
	// 设置frame  无法在ON_CREATE_VIEWS中设置  因为那个时候frame没有值
	_router.view.frame = CGRectMake( 0, 0, self.viewBound.size.width, self.viewBound.size.height );
}

// 相当于 - (void)viewWillAppear:(BOOL)animated
ON_WILL_APPEAR( signal )
{
}

// 相当于 - (void)viewDidAppear:(BOOL)animated
ON_DID_APPEAR( signal )
{
}

// 相当于 - (void)viewWillDisappear:(BOOL)animated
ON_WILL_DISAPPEAR( signal )
{
}

// 相当于 - (void)viewDidDisappear:(BOOL)animated
ON_DID_DISAPPEAR( signal )
{
}

// 相当于 navigationController 的left按钮的点击事件
ON_SIGNAL3( BeeUINavigationBar, LEFT_TOUCHED, signal )
{
}

// 相当于 navigationController 的right按钮的点击事件
ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
}

@end

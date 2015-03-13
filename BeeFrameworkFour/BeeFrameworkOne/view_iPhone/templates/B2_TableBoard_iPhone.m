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
//  B2_TableBoard_iPhone.m
//  BeeFrameworkOne
//
//  Created by Chenyun on 15/3/13.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "B2_TableBoard_iPhone.h"
#import "B2_TableCell_iPhone.h"

#pragma mark -

@interface B2_TableBoard_iPhone()
{
	
}
@end

@implementation B2_TableBoard_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

DEF_OUTLET( BeeUIScrollView, list )

- (void)load
{
}

- (void)unload
{
}

#pragma mark - Signal

ON_CREATE_VIEWS( signal )
{
	// 显示navigationController
	self.navigationBarShown = YES;
	self.navigationBarTitle = @"Title";

	// 设置背景颜色
	self.view.backgroundColor = HEX_RGB(0xfff);

	// 页面中显示的tableview的样式， 在xml中定义

	@weakify(self);

	// 设置table中每行显示的内容
	NSMutableArray * array = [NSMutableArray array];

	for ( int i = 0; i < 10; i++ )
	{
		NSString * str = [NSString stringWithFormat:@"%d",i];
		[array addObject:str];
	}

	// 设置list的属性
	self.list.lineCount = 1;  // 每行显示一个cell
	self.list.animationDuration = 0.25f;

	// 刷新
	self.list.whenReloading =^
	{
		@normalize(self);

		// 设置list中一共有多少行
		self.list.total = array.count;

		for (int i = 0; i < array.count; i++)
		{
			// 设置每行的cell
			BeeUIScrollItem * item = self.list.items[i];
			item.clazz = [B2_TableCell_iPhone class];

			// 赋值
			item.data = [array safeObjectAtIndex:i];
			
			// 设置cell的宽高
			item.size = CGSizeMake( self.list.width, 150.0f );
		}
	};
	
}

ON_DELETE_VIEWS( signal )
{
}

ON_LAYOUT_VIEWS( signal )
{
}

ON_WILL_APPEAR( signal )
{
	// 刷新list
	[self.list reloadData];
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

@end

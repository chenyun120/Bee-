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
//  B2_TableCell_iPhone.m
//  BeeFrameworkOne
//
//  Created by Chenyun on 15/3/13.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "B2_TableCell_iPhone.h"

#pragma mark -

@implementation B2_TableCell_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

DEF_OUTLET( BeeUILabel, labelText )

- (void)load
{
}

- (void)unload
{
}

- (void)dataDidChanged
{
    // TODO: fill data
	
	// 在B2_TableBoard_iPhone 中执行item.data = [array safeObjectAtIndex:i]; 这个方法后  次方法被调用
	
	if ( self.data )
	{
		NSString * str = self.data;
		self.labelText.text = str;
	}
}

- (void)layoutDidFinish
{
    // TODO: custom layout here
}

@end

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
//  B3_ThreeeBoard_iPhone.m
//  BeeFrameworkOne
//
//  Created by Chenyun on 15/3/13.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "B3_ThreeeBoard_iPhone.h"

#pragma mark -

@interface B3_ThreeeBoard_iPhone()
{
	//<#@private var#>
}
@end

@implementation B3_ThreeeBoard_iPhone

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
	self.navigationBarShown = YES;
	self.navigationBarTitle = @"Title";
	self.view.backgroundColor = [UIColor whiteColor];
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

@end

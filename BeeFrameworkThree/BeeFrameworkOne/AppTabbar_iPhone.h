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
//  AppTabbar_iPhone.h
//  liujialing
//
//  Created by PURPLEPENG on 7/14/14.
//  Copyright (c) 2014 PURPLEPENG. All rights reserved.
//

#import "Bee.h"

#pragma mark -

@interface AppTabbar_iPhone : BeeUICell

// 单例
AS_SINGLETON( AppTabbar_iPhone )

AS_OUTLET( BeeUILabel, index_title )
AS_OUTLET( BeeUILabel, grace_title )

AS_OUTLET( BeeUIImageView, index_icon )
AS_OUTLET( BeeUIImageView, grace_icon )

- (void)selectGrace;

@end

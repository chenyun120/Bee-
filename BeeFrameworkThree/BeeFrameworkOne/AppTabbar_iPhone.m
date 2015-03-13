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
//  AppTabbar_iPhone.m
//  liujialing
//
//  Created by PURPLEPENG on 7/14/14.
//  Copyright (c) 2014 PURPLEPENG. All rights reserved.
//

#import "AppTabbar_iPhone.h"

#pragma mark -

@implementation AppTabbar_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

DEF_SINGLETON( AppTabbar_iPhone )

DEF_OUTLET( BeeUILabel, index_title )
DEF_OUTLET( BeeUILabel, grace_title )

DEF_OUTLET( BeeUIImageView, index_icon )
DEF_OUTLET( BeeUIImageView, grace_icon )

- (void)load
{
    [self selectIndex];
}

- (void)unload
{
}

- (void)dataDidChanged
{
    // TODO: fill data
}

- (void)layoutDidFinish
{
    // TODO: custom layout here
}

#pragma mark -

- (void)deselectAll
{
    self.index_title.textColor = HEX_RGB( 0xaaaaaa );
    self.grace_title.textColor = HEX_RGB( 0xaaaaaa );
}

- (void)selectIndex
{
    [self deselectAll];
    
    self.index_title.textColor = HEX_RGB( 0xffffff );
}

- (void)selectGrace
{
    [self deselectAll];

    self.grace_title.textColor = HEX_RGB( 0xffffff );
}

#pragma mark -

ON_SIGNAL3( AppTabbar_iPhone, index, signal )
{
    [self selectIndex];
}

ON_SIGNAL3( AppTabbar_iPhone, grace, signal )
{
    [self selectGrace];
}

@end

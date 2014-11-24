//
//  NNFreezableView.m
//  NNFreezableViewDemo
//
//  Created by noughts on 2014/11/24.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "NNFreezableView.h"

@implementation NNFreezableView{
	BOOL _freezed;
	UIView* _content_view;
	UIView* _snapshot_view;
}


-(void)freeze{
	[self freezeAfterScreenUpdates:NO];
}

-(void)freezeAfterScreenUpdates:(BOOL)afterScreenUpdates{
	if( _freezed ){
		return;
	}
	_content_view = self.subviews.firstObject;
	_snapshot_view = [_content_view snapshotViewAfterScreenUpdates:afterScreenUpdates];
	_content_view.hidden = YES;
	[self addSubview:_snapshot_view];
	_freezed = YES;
}


-(void)unfreeze{
	if( _freezed == NO ){
		return;
	}
	[_snapshot_view removeFromSuperview];
	_content_view.hidden = NO;
	_content_view = nil;// 参照開放
	_snapshot_view = nil;
	_freezed = NO;
}


@end

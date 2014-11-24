//
//  NNFreezableView.h
//  NNFreezableViewDemo
//
//  Created by noughts on 2014/11/24.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NNFreezableView : UIView

-(void)freeze;
-(void)freezeAfterScreenUpdates:(BOOL)afterScreenUpdates;
-(void)unfreeze;

@end

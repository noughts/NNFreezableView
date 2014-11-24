//
//  ViewController.m
//  NNFreezableViewDemo
//
//  Created by noughts on 2014/11/24.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "ViewController.h"
#import "NNFreezableView.h"

@implementation ViewController{
	__weak IBOutlet NNFreezableView* _freezableView;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)freeze:(id)sender{
	[_freezableView freezeAfterScreenUpdates:NO];
}
-(IBAction)unfreeze:(id)sender{
	[_freezableView unfreeze];
}



-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
	return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return 100;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	cell.textLabel.text = indexPath.debugDescription;
	return cell;
}




@end

//
//  ViewController.m
//  iOSThirdPartyTrap
//
//  Created by ItghostFan on 07/13/2017.
//  Copyright (c) 2017 ItghostFan. All rights reserved.
//

#import "ViewController.h"

#import "iOSThirdPartyTrap/NSObject+ReactiveCocoa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
	// Do any additional setup after loading the view, typically from a nib.
    [self racObserveSelector:@selector(viewDidLayoutSubviews) object:self next:^(RACTuple *tuple) {
        NSLog(@"DidLayoutSbuViews!");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  TTTViewController.m
//  TTTDemo
//
//  Created by XiaoKai on 11/23/2016.
//  Copyright (c) 2016 XiaoKai. All rights reserved.
//

#import "TTTViewController.h"
#import <TTTDemo/MyDemoClass.h>
#import <TTTDemo/WXApi.h>

@interface TTTViewController ()

@end

@implementation TTTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    NSString *bundlePath = [[NSBundle bundleForClass:[MyDemoClass class]] pathForResource:@"TTTDemoUI" ofType:@"bundle"];
//    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
//    UIImage *image = [UIImage imageNamed:@"yingwu" inBundle:bundle compatibleWithTraitCollection:nil];
    UIImage *image = [UIImage imageNamed:@"TTTDemoUI.bundle/yingwu"];
    UIImageView *logo = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:logo];
    [logo sizeToFit];
    logo.center = self.view.center;
    
    [MyDemoClass printSomeThing];
    
    if ([WXApi isWXAppInstalled]) {
        NSLog(@"haha");
    } else {
        NSLog(@"kuku");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

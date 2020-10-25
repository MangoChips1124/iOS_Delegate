//
//  ViewController.m
//  iOS 代理
//
//  Created by MangoChips on 2020/10/25.
//  Copyright © 2020 MangoChips. All rights reserved.
//

#import "DelegateDemo.h"

@implementation DelegateDemo

//5秒后更新UI（或金币增加更新UI面板显示）
-(void)startTimer{
    NSLog(@"startTimer");
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(timerProtocol) userInfo:nil repeats:NO];
}

-(void)timerProtocol{
    NSLog(@"timerProtocol");
    [self.delegateDemoProtocol showDelegateAlertView];//使用代理更新UI界面
}


@end

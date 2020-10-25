//
//  ViewController.m
//  iOS 代理
//
//  Created by MangoChips on 2020/10/25.
//  Copyright © 2020 MangoChips. All rights reserved.
//

#import <Foundation/Foundation.h>

//协议定义
//定义一个代理协议 DelegateDemoProtocol 及代理方法 showDelegateAlertView
@protocol DelegateDemoProtocol <NSObject>

-(void)showDelegateAlertView;//此代理方法为 实现具体功能的方法

@end

NS_ASSUME_NONNULL_BEGIN

@interface DelegateDemo : NSObject

//遵循协议的一个代理变量定义
@property(nonatomic,weak) id<DelegateDemoProtocol> delegateDemoProtocol;

-(void)startTimer;//暴露给外部调用

@end

NS_ASSUME_NONNULL_END

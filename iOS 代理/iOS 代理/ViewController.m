//
//  ViewController.m
//  iOS 代理
//
//  Created by MangoChips on 2020/10/25.
//  Copyright © 2020 MangoChips. All rights reserved.
//

#import "ViewController.h"

#import "DelegateDemo.h"

@interface ViewController ()<DelegateDemoProtocol>//需先遵循协议

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    DelegateDemo *delegateDemo = [[DelegateDemo alloc] init];
   delegateDemo.delegateDemoProtocol = self;
   [delegateDemo startTimer];
}

//"被代理对象"实现协议声明的方法,由"代理对象"调用
-(void)showDelegateAlertView{
    NSLog(@"5S After");
    
    //UIAlertView已经被遗弃使用，真机可以运行，模拟器会崩溃。log正常输出
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"提示" message:@"5s 时间到" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定",nil];

    alert.alertViewStyle=UIAlertViewStyleDefault;
    [alert show];
    
}

@end

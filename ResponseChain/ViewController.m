//
//  ViewController.m
//  ResponseChain
//
//  Created by xuqianlong on 16/3/21.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIControl *blueCtrl = [[UIControl alloc]initWithFrame:CGRectMake(0, 20, 300, 300)];
    blueCtrl.backgroundColor = [UIColor blueColor];
    
    UIControl *greenCtrl = [[UIControl alloc]initWithFrame:CGRectMake(150, 150, 300, 300)];
    greenCtrl.backgroundColor = [UIColor greenColor];
    
    UIControl *redCtrl = [[UIControl alloc]initWithFrame:CGRectMake(30, 400, 100, 50)];
    redCtrl.backgroundColor = [UIColor redColor];

    
    [blueCtrl addSubview:greenCtrl];
    [self.view addSubview:blueCtrl];
    [self.view addSubview:redCtrl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

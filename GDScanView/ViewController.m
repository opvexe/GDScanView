//
//  ViewController.m
//  GDScanView
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import "ViewController.h"
#import "GDScanViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *data = @[@"扫码二维码",@"生产二维码"];
    for (int i = 0 ; i< 2; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:data[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        btn.frame = CGRectMake(100, 100+i*50, 100, 30);
        btn.tag = 100 +i ;
        [btn addTarget:self action:@selector(dothings:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}
-(void)dothings:(UIButton *)sender{
    
    switch (sender.tag-100) {
        case 0:
        {
            GDScanViewController *scan = [[GDScanViewController alloc]init];
            [self.navigationController pushViewController:scan animated:YES];
        }
            break;
        case 1:
        {
            
        }
            break;
            
        default:
            break;
    }
}



@end

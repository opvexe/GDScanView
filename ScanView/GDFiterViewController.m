//
//  GDFiterViewController.m
//  GDScanView
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import "GDFiterViewController.h"
#import "UIImage+Scan.m"

@interface GDFiterViewController ()

@property (nonatomic, strong)                   UIImageView *scanImageView;
@end

@implementation GDFiterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.scanImageView.image = [UIImage createQRCodeWithString:@""];
}


@end

//
//  GDScanViewController.h
//  GDScanView
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^successBlock)(NSString *SacnCodeInfo);

@interface GDScanViewController : UIViewController

@property (nonatomic, copy)   successBlock    block;


@end

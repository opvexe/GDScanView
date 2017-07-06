//
//  UIImage+Scan.h
//  GDScanView
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scan)

/**
 *根据传入的字符串来生成相应的二维码
 *@param   string     传入的字符串
 *@return  UIImage(二维码)
 */
+ (UIImage *)createQRCodeWithString:(NSString *)string;

/**
 *根据传入的图片改变相应的大小
 *@param   image     传入的图片
 *@param   size      传入的尺寸
 *@return  UIImage(二维码)
 */
+ ( UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size;
@end

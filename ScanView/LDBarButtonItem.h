//
//  LDBarButtonItem.h
//  WeiCheProject
//
//  Created by SHUMIN on 16/6/10.
//  Copyright © 2016年 SHUMIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDBarButtonItem : UIButton

//创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle target:(id)target selector:(SEL)sel;

//创建图标按钮
+ (instancetype)buttonWithImageNormal:(NSString *)imageNormal imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)sel;

+ (instancetype)buttonWithImageNormal:(NSString *)imageNormal imageSelected:(NSString *)imageSelected imageHightlight:(NSString *)imageHighlight target:(id)target selector:(SEL)sel;

//创建带文字和图片的按钮
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle ImageNormal:(NSString *)imageNormal imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)sel;

//高度制定的按钮
+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font backgroundColor:(UIColor *)backgroundColor image:(NSString *)image target:(id)target selector:(SEL)sel;

+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font backgroundColor:(UIColor *)backgroundColor target:(id)target selector:(SEL)sel;

@end

//
//  LDBarButtonItem.m
//  WeiCheProject
//
//  Created by SHUMIN on 16/6/10.
//  Copyright © 2016年 SHUMIN. All rights reserved.
//

#import "LDBarButtonItem.h"

@implementation LDBarButtonItem

//实现创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle target:(id)target selector:(SEL)sel
{
    //初始化
    LDBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeSystem];
    //动态计算按钮宽度
    CGSize buttonSize = [buttonTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12.0]}];
    //限制按钮的最大宽度为（中文4个字的宽度：68）
    buttonSize.width = buttonSize.width + 15*2;

    barButtonItem.frame = CGRectMake(0, 0, buttonSize.width, 44);
    
    //按钮文字过长截断方式
    barButtonItem.titleLabel.lineBreakMode = NSLineBreakByClipping;
    
    [barButtonItem setTitle:buttonTitle forState:UIControlStateNormal];
    //按钮字体颜色默认为白色
    barButtonItem.tintColor = [UIColor whiteColor];
    barButtonItem.titleLabel.font = [UIFont systemFontOfSize:12.0];
    [barButtonItem addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return barButtonItem;
}

//实现创建图标按钮
+ (instancetype)buttonWithImageNormal:(NSString *)imageNormal imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)sel
{
    LDBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    barButtonItem.frame = CGRectMake(0, 0, 44, 44);
    [barButtonItem setImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
    [barButtonItem setImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
    barButtonItem.clipsToBounds = YES;
    [barButtonItem addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return barButtonItem;
}

+ (instancetype)buttonWithImageNormal:(NSString *)imageNormal imageSelected:(NSString *)imageSelected imageHightlight:(NSString *)imageHighlight target:(id)target selector:(SEL)sel
{
    LDBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    barButtonItem.frame = CGRectMake(0, 0, 44, 44);
    [barButtonItem setImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
    [barButtonItem setImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
    [barButtonItem setImage:[UIImage imageNamed:imageHighlight] forState:UIControlStateHighlighted];
    barButtonItem.clipsToBounds = YES;
    [barButtonItem addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return barButtonItem;
}

+ (instancetype)buttonWithTitle:(NSString *)buttonTitle ImageNormal:(NSString *)imageNormal imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)sel
{
    LDBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    CGSize buttonSize = [buttonTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:13.0f]}];
    //限制按钮的最大宽度为（中文4个字的宽度：68）
    buttonSize.width = buttonSize.width + 15*2;
    
    barButtonItem.frame = CGRectMake(0, 0, buttonSize.width, 44);
    
    [barButtonItem setImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
    [barButtonItem setImage:[UIImage imageNamed:imageSelected] forState:UIControlStateHighlighted];
    barButtonItem.imageView.contentMode = UIViewContentModeCenter;
    barButtonItem.clipsToBounds = YES;
    [barButtonItem addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, buttonSize.width, 44)];
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor redColor];           //字体颜色
    label.font = [UIFont systemFontOfSize:13];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = buttonTitle;
    [barButtonItem addSubview:label];
    
    return barButtonItem;
}

+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font backgroundColor:(UIColor *)backgroundColor image:(NSString *)image target:(id)target selector:(SEL)sel
{
    LDBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    [barButtonItem setTitle:title forState:UIControlStateNormal];
    [barButtonItem setTitleColor:titleColor forState:UIControlStateNormal];
    barButtonItem.titleLabel.font = font;
    [barButtonItem setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    barButtonItem.backgroundColor = backgroundColor;
    [barButtonItem addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return barButtonItem;
}

+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font backgroundColor:(UIColor *)backgroundColor target:(id)target selector:(SEL)sel
{
    LDBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    [barButtonItem setTitle:title forState:UIControlStateNormal];
    [barButtonItem setTitleColor:titleColor forState:UIControlStateNormal];
    barButtonItem.titleLabel.font = font;
    barButtonItem.backgroundColor = backgroundColor;
    [barButtonItem addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return barButtonItem;
}

@end

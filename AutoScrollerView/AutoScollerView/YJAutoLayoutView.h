//
//  AuotLayoutScrollerView.h
//  自动布局
//
//  Created by wyj on 14-10-19.
//  Copyright (c) 2014年 wyj.ruijie. All rights reserved.
//

/*
 说明：
 1.如果添加的总view的frame小于自身的size的话，是不支持滚动的。
 如果需要支持滚动，需要在在最后添加一个空view来填充，使得总size大于frame的size
 2.依赖第三方Masonry布局
 **/

#import <UIKit/UIKit.h>

// 两个常量用于不需要设置固定的高或者宽，高和宽有view自身的内容决定
extern CGFloat const AuotLayoutViewAutoHeight ;
extern CGFloat const AuotLayoutViewAutoWidth ;

typedef NS_ENUM(NSUInteger, AutoLayoutViewType)
{
    // 垂直方向
    AutoLayoutViewTypeV = 1 ,
    // 水平方向
    AutoLayoutViewTypeH = 2
    
};
@interface YJAutoLayoutView : UIScrollView
// 刚开始就知道frame的init初始化方法。
-(instancetype)initWithFrame:(CGRect)frame viewType:(AutoLayoutViewType)type;
// 这个使用约束生成布局时，需要设置的方法
-(void)setContentSize:(CGSize)size viewType:(AutoLayoutViewType)type;
// 延垂直方向添加view
-(void)addAutoLayoutViewV:(UIView *)view height:(CGFloat)height;
// 延水平方向添加view
-(void)addAutoLayoutViewH:(UIView *)view width:(CGFloat)width;
// 修改view的高或者宽
-(void)setAutoLayoutView:(UIView *)view  content:(CGFloat)content;
@end


//
//  headView.m
//  Run loops
//
//  Created by 晓磊 on 2017/10/20.
//  Copyright © 2017年 cc. All rights reserved.
//

#import "headView.h"

@implementation headView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"draw");
}
//当需要被重绘时，CALayer会请求它的代理给他一个寄宿图来显示。它通过调用下面这个方法做到的:
-(void)displayLayer:(CALayer *)layer{
    NSLog(@"display");
}
//。如果代理不实现-displayLayer:方法，CALayer就会转而尝试调用下面这个方法：
//在调用这个方法之前，CALayer创建了一个合适尺寸的空寄宿图（尺寸由bounds和contentsScale决定）和一个Core Graphics的绘制上下文环境，为绘制寄宿图做准备，他作为ctx参数传入。
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    
}

@end

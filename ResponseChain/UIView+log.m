//
//  UIView+log.m
//  ResponseChain
//
//  Created by xuqianlong on 16/3/21.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import "UIView+log.h"
#import "JRSwizzle.h"

@implementation UIView (log)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [UIView jr_swizzleMethod:@selector(pointInside:withEvent:) withMethod:@selector(my_pointInside:withEvent:) error:nil];
        [UIView jr_swizzleMethod:@selector(hitTest:withEvent:) withMethod:@selector(my_hitTest:withEvent:) error:nil];
    });
}

- (BOOL)my_pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    BOOL inside = [self my_pointInside:point withEvent:event];
    NSLog(@"--[%@]-[%d]-%@",NSStringFromSelector(_cmd),inside,self);
    return inside;
}

- (UIView *)my_hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"--begin-[%@]-[%@]",NSStringFromSelector(_cmd),self);
    UIView *v = [self my_hitTest:point withEvent:event];
    NSLog(@"--end-[%@]-[%@]-%@",NSStringFromSelector(_cmd),self,v);
    return v;
}

@end

//
//  Painter.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCPainter.h"

@implementation VCPainter

-(id)init
{
    self = [super init];
    
    if (self) {
        self.canvas = [[VCCanvas alloc] init];
        
        __weak __typeof__(self) weakSelf = self;
        self.fillRect = ^(JSValue *x, JSValue *y, JSValue *width, JSValue *height) {
            __typeof__(self) strongSelf = weakSelf;
            
            CGRect rect = CGRectMake([x toDouble], [y toDouble], [width toDouble], [height toDouble]);
//            [strongSelf.canvas setFillStyle:strongSelf.fillStyle];
            [strongSelf.canvas drawRect:rect WithColor:strongSelf.fillStyle];
            NSLog(@"x %@, y %@, width %@, height %@", x, y, width, height);
        };
    }
    
    return self;
}

-(void)appendCanvasWithWidth:(int)width Height:(int)height MainView:(UIView *)main
{
    CGRect frame = CGRectMake(0, 0, width, height);
    self.canvas.frame = frame;
    [main addSubview:self.canvas];
}

@end

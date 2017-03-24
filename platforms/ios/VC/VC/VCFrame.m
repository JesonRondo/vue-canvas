//
//  VCFrame.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCFrame.h"

@interface VCFrame()

@property (nonatomic, assign) int realWidth;
@property (nonatomic, assign) int realHeight;

@end

@implementation VCFrame

-(int)width
{
    return [self realWidth];
}

-(int)height
{
    return [self realHeight];
}

-(void)setFrameWidth:(int)width Height:(int)height
{
    self.realWidth = width;
    self.realHeight = height;
}

@end

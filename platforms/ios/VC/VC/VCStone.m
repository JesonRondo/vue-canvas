//
//  VCStone.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCStone.h"
#import "VCFrame.h"
#import "VCNode.h"

@interface VCStone()

@property (nonatomic) int frame_width;
@property (nonatomic) int frame_height;
@property (nonatomic, strong) UIView *parentView;

@end

@implementation VCStone

-(void)setFrameWidth:(int)width Height:(int)height parentView:(UIView *)view
{
    self.frame_width = width;
    self.frame_height = height;
    self.parentView = view;
}

-(void)injectContext:(JSContext *)context
{
    VCFrame *frame = [[VCFrame alloc] init];
    [frame setFrameWidth:self.frame_width Height:self.frame_height];
    
    context[@"VC_FRAME"] = frame;
    
    context[@"VC_Main_ROOT"] = @{
        @"appendChild": ^(JSValue *child) {
            VCNode *node = [child toObject];
            if ([node isKindOfClass:[VCNode class]]) {
                NSLog(@"appendChild %@", node.tagName);
                if ([node.tagName isEqualToString:@"canvas"]) {
                    [node appendCanvasWithWidth:self.frame_width
                                         Height:self.frame_height
                                       MainView:self.parentView];
                }
            } else {
                NSLog(@"appendChild %@", child);
            }
        },
        @"removeChild": ^() {}
    };
    
    context[@"VC_Main_APPContent"] = @{
        @"parentNode": context.globalObject[@"VC_Main_ROOT"],
        @"hasAttribute": ^() { return NO; },
        @"tagName": @"view",
        @"nodeType": @1
    };
}

@end

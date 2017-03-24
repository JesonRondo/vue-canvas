//
//  VCView.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCView.h"
#import "VCCore.h"

@interface VCView()

@property (nonatomic, strong) VCCore *core;

@end

@implementation VCView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.frame = frame;
        self.core = [[VCCore alloc] init];

        [self.core setFrameWithWidth:frame.size.width Height:frame.size.height parentView:self];
        [self.core injectContext];
    }

    return self;
}

-(void)runScriptWithUrl:(NSString *)url
{
    [self.core runScriptWithUrl:url];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

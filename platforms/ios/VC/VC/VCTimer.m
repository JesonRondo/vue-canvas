//
//  VCTimer.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCTimer.h"

@interface VCTimer()

@property (nonatomic) int timer;

@end

@implementation VCTimer

-(id)init
{
    self = [super init];
    
    if (self) {
        self.timer = 1;

        __weak __typeof__(self) weakSelf = self;
        self.setTimeout = ^(JSValue* function, JSValue* timeout) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)([timeout toInt32] * NSEC_PER_MSEC)), dispatch_get_main_queue(), ^{
                [function callWithArguments:@[]];
            });
            
            __typeof__(self) strongSelf = weakSelf;
            return strongSelf.timer++;
        };
    }
    
    return self;
}

@end


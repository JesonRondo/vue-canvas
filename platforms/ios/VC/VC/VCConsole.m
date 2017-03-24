//
//  VCConsole.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCConsole.h"

@implementation VCConsole

-(id)init
{
    self = [super init];
    
    if (self) {
        [self logHandle];
    }
    
    return self;
}

-(void)logHandle
{
    void (^logBlock)() = ^() {
        NSArray *args = [JSContext currentArguments];
        for (id obj in args) { NSLog(@"%@", obj); }
    };
    
    self.log = logBlock;
    self.error = logBlock;
}

@end

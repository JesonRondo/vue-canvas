//
//  VCWindow.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCWindow.h"

@implementation VCWindow

-(void)injectContext:(JSContext *)context
{
    context[@"window"] = context.globalObject;
    
    self.document = [[VCDocument alloc] init];
    context[@"document"] = self.document;
    
    self.console = [[VCConsole alloc] init];
    context[@"console"] = self.console;
    
    self.navigator = [[VCNavigator alloc] init];
    context[@"navigator"] = self.navigator;
 
    VCTimer *timer= [[VCTimer alloc] init];
    self.setTimeout = [timer setTimeout];
    context[@"setTimeout"] = self.setTimeout;
}

@end

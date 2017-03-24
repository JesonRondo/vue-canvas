//
//  VCConsole.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol VCConsoleProtocol <JSExport>

@property (nonatomic, strong) void (^log)();
@property (nonatomic, strong) void (^error)();

@end

@interface VCConsole : NSObject<VCConsoleProtocol>

@property (nonatomic, strong) void (^log)();
@property (nonatomic, strong) void (^error)();

@end

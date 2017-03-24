//
//  VCWindow.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

#import "VCTimer.h"
#import "VCConsole.h"
#import "VCDocument.h"
#import "VCNavigator.h"

@protocol VCWindowProtocol <NSObject>

@property (nonatomic, strong) VCConsole *console;
@property (nonatomic, strong) VCDocument *document;
@property (nonatomic, strong) VCNavigator *navigator;
@property (nonatomic, strong) VCTimerBlock setTimeout;

@end

@interface VCWindow : NSObject<VCWindowProtocol>

@property (nonatomic, strong) VCConsole *console;
@property (nonatomic, strong) VCDocument *document;
@property (nonatomic, strong) VCNavigator *navigator;
@property (nonatomic, strong) VCTimerBlock setTimeout;

-(void)injectContext:(JSContext *)context;

@end

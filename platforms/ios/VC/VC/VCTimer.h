//
//  VCTimer.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

typedef int (^VCTimerBlock)(JSValue *function, JSValue *timeout);

@interface VCTimer : NSObject

@property (nonatomic, strong) VCTimerBlock setTimeout;

@end

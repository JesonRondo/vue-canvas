//
//  VCFrame.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol VCFrameProtocol <JSExport>

@property (nonatomic, assign, readonly) int width;
@property (nonatomic, assign, readonly) int height;

@end

@interface VCFrame : NSObject<VCFrameProtocol>

@property (nonatomic, assign, readonly) int width;
@property (nonatomic, assign, readonly) int height;

-(void)setFrameWidth:(int)width Height:(int)height;

@end

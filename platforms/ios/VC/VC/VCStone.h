//
//  VCStone.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface VCStone : NSObject

-(void)setFrameWidth:(int)width Height:(int)height parentView:(UIView *)view;
-(void)injectContext:(JSContext *)context;

@end

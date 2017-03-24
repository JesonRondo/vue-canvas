//
//  Core.h
//  VC
//
//  Created by Long Zhou on 2017/3/23.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface VCCore : NSObject

-(void)injectContext;
-(void)runScriptWithUrl:(NSString *)url;
-(void)setFrameWithWidth:(int)width Height:(int)height parentView:(UIView *)view;

@end

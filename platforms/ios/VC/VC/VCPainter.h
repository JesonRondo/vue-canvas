//
//  Painter.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

#import "VCCanvas.h"

typedef void (^VCFillRectBlock)(JSValue *x, JSValue *y, JSValue *width, JSValue *height);

@protocol VCPainterProtocol <JSExport>

@property (nonatomic, strong) VCFillRectBlock fillRect;
@property (nonatomic, strong) NSString *fillStyle;

@end


@interface VCPainter : NSObject<VCPainterProtocol>

@property (nonatomic, strong) VCFillRectBlock fillRect;
@property (nonatomic, strong) NSString *fillStyle;
@property (nonatomic, strong) VCCanvas *canvas;

-(void)appendCanvasWithWidth:(int)width Height:(int)height MainView:(UIView *)main;

@end

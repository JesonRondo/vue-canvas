//
//  VCNode.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

#import "VCPainter.h"

typedef void (^VCAppendChildBlock)(JSValue *child);
typedef void (^VCSetAttributeBlock)(JSValue *key, JSValue *value);
typedef VCPainter* (^VCGetContext)(JSValue *type);

@protocol VCNodeProtocol <JSExport>

@property (nonatomic, strong) VCAppendChildBlock appendChild;
@property (nonatomic, strong) VCSetAttributeBlock setAttribute;
@property (nonatomic, strong) VCGetContext getContext;
@property (nonatomic, assign, readonly) NSDictionary *style;
@property (nonatomic, assign, readonly) NSString *tagName;

@end

@interface VCNode : NSObject<VCNodeProtocol>

@property (nonatomic, strong) VCAppendChildBlock appendChild;
@property (nonatomic, strong) VCSetAttributeBlock setAttribute;
@property (nonatomic, strong) VCGetContext getContext;
@property (nonatomic, assign, readonly) NSDictionary *style;
@property (nonatomic, assign, readonly) NSString *tagName;

-(id)initNodeWithTag:(NSString *)tagName;
-(void)appendCanvasWithWidth:(int)width Height:(int)height MainView:(UIView *)main;

@end

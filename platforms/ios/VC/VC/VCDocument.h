//
//  VCDocument.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

#import "VCNode.h"
#import "VCTextNode.h"

typedef VCNode* (^VCCreateElementBlock)(JSValue *tagName);
typedef VCNode* (^VCCreateElementNSBlock)(JSValue *ns, JSValue *tagName);
typedef VCTextNode* (^VCCreateTextNodeBlock)(JSValue *text);

@protocol VCDocumentProtocol <JSExport>

@property (nonatomic, strong) VCCreateElementBlock createElement;
@property (nonatomic, strong) VCCreateElementNSBlock createElementNS;
@property (nonatomic, strong) VCCreateTextNodeBlock createTextNode;

@end

@interface VCDocument : NSObject<VCDocumentProtocol>

@property (nonatomic, strong) VCCreateElementBlock createElement;
@property (nonatomic, strong) VCCreateElementNSBlock createElementNS;
@property (nonatomic, strong) VCCreateTextNodeBlock createTextNode;

@end

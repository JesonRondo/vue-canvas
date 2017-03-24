//
//  VCNode.h
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol VCTextNodeProtocol <JSExport>

@end

@interface VCTextNode : NSObject<VCTextNodeProtocol>

@end

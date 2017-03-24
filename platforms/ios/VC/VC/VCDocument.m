//
//  VCDocument.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCDocument.h"

@implementation VCDocument

-(id)init
{
    self = [super init];
    
    if (self) {
        self.createElement = ^(JSValue *tagName) {
            NSLog(@"createElement %@", tagName);
            VCNode *node = [[VCNode alloc] initNodeWithTag:[tagName toString]];

            return node;
        };

        self.createElementNS = ^(JSValue *ns, JSValue *tagName) {
            NSLog(@"createElementNS %@ %@", ns, tagName);
            VCNode *node = [[VCNode alloc] initNodeWithTag:[tagName toString]];
            
            return node;
        };
        
        self.createTextNode = ^(JSValue *text) {
            NSLog(@"createTextNode %@", text);
            VCTextNode *node = [[VCTextNode alloc] init];
            
            return node;
        };
    }
    
    return self;
}

@end

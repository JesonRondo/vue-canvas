//
//  VCNode.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCNode.h"

@interface VCNode()

@property (nonatomic, strong) VCPainter *painter;
@property (nonatomic, strong) NSString *tagName;

@end

@implementation VCNode

-(id)initNodeWithTag:(NSString *)tagName
{
    self = [super init];
    
    if (self) {
        self.tagName = tagName;
        
        self.appendChild = ^(JSValue *child) {
            VCNode *node = [child toObject];
            if ([node isKindOfClass:[VCNode class]]) {
                NSLog(@"appendChild %@", node.tagName);
            } else {
                NSLog(@"appendChild %@", child);
            }
        };
        
        self.setAttribute = ^(JSValue *key, JSValue *value) {
            NSLog(@"setAttribute %@ %@", key, value);
        };
        
        if ([tagName isEqualToString:@"canvas"]) {
            self.painter = [[VCPainter alloc] init];
            
            __weak __typeof__(self) weakSelf = self;
            self.getContext = ^(JSValue *type) {
                NSLog(@"context type %@", type);

                __typeof__(self) strongSelf = weakSelf;
                return strongSelf.painter;
            };
        }
    }

    return self;
}

-(NSDictionary *)style
{
    return @{};
}

-(void)appendCanvasWithWidth:(int)width Height:(int)height MainView:(UIView *)main
{
    [self.painter appendCanvasWithWidth:width Height:height MainView:main];
}

@end

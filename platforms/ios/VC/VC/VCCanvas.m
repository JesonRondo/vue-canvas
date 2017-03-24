//
//  VCCanvas.m
//  VC
//
//  Created by Long Zhou on 2017/3/24.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCCanvas.h"

@interface VCCanvas()

@property (nonatomic, assign) CGFloat fillColorRed;
@property (nonatomic, assign) CGFloat fillColorGreen;
@property (nonatomic, assign) CGFloat fillColorBule;
@property (nonatomic, assign) CGFloat fillColorAlpha;

@end

@implementation VCCanvas

-(id)init
{
    self = [super init];
    
    if (self) {
        self.fillColorRed = 1.0;
        self.fillColorGreen = 1.0;
        self.fillColorBule = 1.0;
        self.fillColorAlpha = 1.0;
    }
    
    return self;
}

-(void)setFillStyle:(NSString *)fillStyle
{
    if ([fillStyle hasPrefix:@"rgb("] && [fillStyle hasSuffix:@")"]) {
        NSRange range = [fillStyle rangeOfString:@")"];
        
        NSString *fillColor = [fillStyle substringToIndex:range.location];
        fillColor = [fillColor substringFromIndex:4];
        
        NSArray *colors = [fillColor componentsSeparatedByString:@","];
        for (int i = 0; i < [colors count]; i++) {
            switch (i) {
                case 0:
                    self.fillColorRed = [(NSString *)[colors objectAtIndex:i] doubleValue] / 255;
                    break;
                
                case 1:
                    self.fillColorGreen = [(NSString *)[colors objectAtIndex:i] doubleValue] / 255;
                    break;

                case 2:
                    self.fillColorBule =[(NSString *)[colors objectAtIndex:i] doubleValue] / 255;
                    break;
                    
                default:
                    break;
            }
        }
    }
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect WithColor:(NSString *)color {
    [self setFillStyle:color];
    
//    CGPoint layerCenter = CGPointMake(CGRectGetWidth(self.frame)/2, CGRectGetWidth(self.frame)/2);
//    CAShapeLayer *layer = [CAShapeLayer layer];
//    layer.frame = self.bounds;
//    layer.lineWidth = 6.0;
//    layer.strokeColor = [UIColor redColor].CGColor;
////    layer.fillColor = [UIColor whiteColor].CGColor;
//    
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path addArcWithCenter:layerCenter radius:rect.size.height startAngle:0.0 endAngle:M_PI*2 clockwise:YES];
//    layer.path = path.CGPath;
//    
//    UIGraphicsBeginImageContext(self.bounds.size);
//    [path stroke];
//    [path fill];
//    UIGraphicsEndImageContext();
//    
//    [self.layer addSublayer:layer];
    
    UIGraphicsBeginImageContext(self.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, self.fillColorRed, self.fillColorGreen, self.fillColorBule, self.fillColorAlpha);
    CGContextFillRect(context, rect);
    UIGraphicsEndImageContext();
}

@end

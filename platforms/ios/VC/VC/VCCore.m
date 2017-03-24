//
//  Core.m
//  VC
//
//  Created by Long Zhou on 2017/3/23.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "VCCore.h"
#import "VCStone.h"
#import "VCWindow.h"
#import <AFNetworking.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface VCCore()

@property (nonatomic, strong) JSContext *context;

@property (nonatomic, strong) VCWindow *window;
@property (nonatomic, strong) VCStone *cornerstone;

@end

@implementation VCCore

-(id)init
{
    self = [super init];

    if (self) {
        self.window = [[VCWindow alloc] init];
        self.cornerstone = [[VCStone alloc] init];
    }
    
    return self;
}

-(void)injectContext
{
    self.context = [[JSContext alloc] init];
    
    [self.context setExceptionHandler:^(JSContext *context, JSValue *exception) {
        [JSContext currentContext].exception = exception;
        
        NSDictionary *detailException = (NSDictionary *)[exception toObject];
        
        NSLog(@"Error: %@ at line %@ column %@ file %@",
              exception,
              detailException[@"line"],
              detailException[@"column"],
              detailException[@"sourceURL"]);
    }];
    
    [self.window injectContext:self.context];
    [self.cornerstone injectContext:self.context];
}

-(void)runScriptWithUrl:(NSString *)url
{
    NSURL *URL = [NSURL URLWithString:url];

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSString *jsData = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        [self.context evaluateScript:jsData withSourceURL:URL];
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

-(void)setFrameWithWidth:(int)width Height:(int)height parentView:(UIView *)view
{
    [self.cornerstone setFrameWidth:width Height:height parentView:view];
}

@end


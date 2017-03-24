//
//  ViewController.m
//  VC
//
//  Created by Long Zhou on 2017/3/23.
//  Copyright © 2017年 Long Zhou. All rights reserved.
//

#import "ViewController.h"
#import "VCView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // init view
    VCView *jsView = [[VCView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:jsView];
    
    // load script
    [jsView runScriptWithUrl:@"http://127.0.0.1:5000/examples/layout/dist/bundle.js"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

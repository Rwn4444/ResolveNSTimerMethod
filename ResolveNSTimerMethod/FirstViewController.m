//
//  FirstViewController.m
//  excise
//
//  Created by shenhua on 2018/9/3.
//  Copyright © 2018年 RWN. All rights reserved.
//

#import "FirstViewController.h"
#import "RWNProxy.h"
@interface FirstViewController ()

@property(nonatomic,strong) CADisplayLink * link;

@property(nonatomic,strong) NSTimer *time;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
//    CADisplayLink * link =[CADisplayLink displayLinkWithTarget:[RWNProxy RWNProxyWithTarget:self] selector:@selector(timeTest)];
//    [link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
//    self.link=link;

    self.time =[NSTimer scheduledTimerWithTimeInterval:1 target:[RWNProxy RWNProxyWithTarget:self] selector:@selector(timeTest) userInfo:nil repeats:YES];
    
    
    // Do any additional setup after loading the view.
}




-(void)timeTest{
    
    NSLog(@"timeTest");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)dealloc{
    
    [self.time invalidate];
    self.time=nil;

//    [self.link invalidate];
//    self.link=nil;
    
}

@end

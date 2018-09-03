//
//  RWNProxy.m
//  excise
//
//  Created by shenhua on 2018/9/3.
//  Copyright © 2018年 RWN. All rights reserved.
//

#import "RWNProxy.h"

@interface RWNProxy()

@property(nonatomic,weak) id target;

@end

@implementation RWNProxy

+(instancetype)RWNProxyWithTarget:(id)target{
    
    RWNProxy * proxy =[RWNProxy alloc];
    proxy.target=target;
    return proxy;
    
}


-(NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    
    NSMethodSignature *signature  = nil;
    if ([self.target methodSignatureForSelector:sel]) {
        signature = [self.target methodSignatureForSelector:sel];
    }else{
        signature = [super methodSignatureForSelector:sel];
    }
    return signature;
    
}

-(void)forwardInvocation:(NSInvocation *)invocation{
    
    if (self.target) {
        
        [invocation invokeWithTarget:self.target];
        
    }
    
}


@end

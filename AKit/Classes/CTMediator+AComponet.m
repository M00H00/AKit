//
//  CTMediator+AComponet.m
//  Pods
//
//  Created by 牟华 on 19/1/23.
//
//

#import "CTMediator+AComponet.h"

@implementation CTMediator (AComponet)
    
- (UIViewController *)aInfoWithName:(NSString *)name age:(NSInteger)age {
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:name forKey:@"name"];
    [dic setValue:@(age) forKey:@"age"];
    return [self performTarget:@"AViewController" action:@"infoAction" params:dic shouldCacheTarget:true];
}

@end

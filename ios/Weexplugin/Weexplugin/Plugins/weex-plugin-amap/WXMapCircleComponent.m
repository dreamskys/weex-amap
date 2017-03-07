//
//  WXMapCircleComponent.m
//  Pods
//
//  Created by yangshengtao on 17/3/6.
//
//

#import "WXMapCircleComponent.h"
#import "NSDictionary+WXMap.h"

@implementation WXMapCircleComponent

@synthesize center = _center;
@synthesize radius = _radius;

- (instancetype)initWithRef:(NSString *)ref
                       type:(NSString*)type
                     styles:(nullable NSDictionary *)styles
                 attributes:(nullable NSDictionary *)attributes
                     events:(nullable NSArray *)events
               weexInstance:(WXSDKInstance *)weexInstance
{
    self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance];
    if (self) {
        _center = [attributes wxmap_safeObjectForKey:@"center"];
        _radius = [[attributes wxmap_safeObjectForKey:@"radius"] doubleValue];
    }
    return self;
}

@end

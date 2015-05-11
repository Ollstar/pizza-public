//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@interface DeliveryService ()

@end

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.deliveryCar = [[DeliveryCar alloc]init];
        self.pizzaLog = [NSMutableArray array];
    }
    return self;
}

- (NSString *)getStringForPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    NSString *str = @"";
    if (size == PizzaSizeLarge) {
        str = [str stringByAppendingString:@"Large "];
    } else if (size == PizzaSizeMedium) {
        str = [str stringByAppendingString:@"Medium "];
    } else {
        str = [str stringByAppendingString:@"Small "];
    }
    for (NSString *topping in toppings) {
        str = [str stringByAppendingString:topping];
        if ([topping isEqualToString:toppings.lastObject]) {
            str = [str stringByAppendingString:@"."];
        } else {
            str = [str stringByAppendingString:@", "];
        }
    }
    return str;
}
- (void)deliverPizza:(Pizza *)pizza {
    [self.pizzaLog addObject:pizza];
    for (Pizza *pizza in self.pizzaLog) {
        NSLog(@"Pizza log:%@", [self getStringForPizzaSize:pizza.size andToppings:pizza.toppings]);
    }
    [self.deliveryCar deliverPizza:pizza];
}

@end

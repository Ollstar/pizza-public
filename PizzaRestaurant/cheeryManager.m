//
//  cheeryManager.m
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "cheeryManager.h"

@implementation cheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size toppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Thanks for visiting Cheery Pizza, here is your %@", [self getStringForPizzaSize:pizza.size andToppings:pizza.toppings]);
    [self.deliveryService deliverPizza:pizza];
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

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.deliveryService = [[DeliveryService alloc]init];
    }
    return self;
}

@end

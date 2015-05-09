//
//  cheeryManager.m
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "cheeryManager.h"

@implementation cheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Thanks for visiting Cheery Pizza, here is your %@ %@", [self getStringForPizzaSize:pizza.size], [self getStringForToppings:pizza.toppings]);
}

- (NSString *)getStringForPizzaSize:(PizzaSize)size {
    if (size == PizzaSizeLarge) {
        return @"Large";
    } else if (size == PizzaSizeMedium) {
        return @"Medium";
    } else {
        return @"Small";
    }
}

- (NSString *)getStringForToppings:(NSArray *)toppings {
    NSString *str = @"";
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

@end

//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(Size)size toppings:(NSArray *)toppings {
    if ([self.delegate kitchenShouldUpgradeOrder:self]) {
        size = PizzaSizeLarge;
    }
    
    if (![self.delegate kitchen:self shouldMakePizzaOfSize:size toppings:toppings]) {
        return nil;
    }
    
    Pizza *pizza = [Pizza pizzaWithToppings:toppings andSize:size];
    
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)])
        [self.delegate kitchenDidMakePizza:pizza];
    
    return pizza;
}

@end

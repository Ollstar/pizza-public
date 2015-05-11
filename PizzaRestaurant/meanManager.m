//
//  meanManager.m
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "meanManager.h"

@implementation meanManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.deliveryService = [[DeliveryService alloc]init];
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size toppings:(NSArray *)toppings {
    return ![toppings containsObject:@"anchovie"];
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Here is your crappy %@.", [self getStringForPizzaSize:pizza.size andToppings:pizza.toppings]);
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

@end

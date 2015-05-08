//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

+ (Pizza *)pizzaWithSize:(NSArray *)toppings andSize:(PizzaSize)size{
    return [[Pizza alloc] initWithSize:toppings andSize:size];
}


- (Pizza *)initWithSize:(NSArray *)toppings andSize:(PizzaSize)size
{
    self = [super init];
    if (self) {
        self.toppings = toppings;
        self.size = size;
    }
    return self;
}

+ (PizzaSize) pizzaSize:(NSString *)pizzaString {
    if ([pizzaString isEqualToString:@"large"]) {
        return PizzaSizeLarge;
    } else if ([pizzaString isEqualToString:@"medium"]) {
        return PizzaSizeMedium;
    } else {
        return PizzaSizeSmall;
    }
}




@end

//
//  meanManager.m
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "meanManager.h"

@implementation meanManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings {
    return ![toppings containsObject:@"Anchovie"];
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end

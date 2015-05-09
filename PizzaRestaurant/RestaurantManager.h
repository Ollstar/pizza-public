//
//  RestaurantManager.h
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
@class Kitchen;

@protocol RestaurantManager <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

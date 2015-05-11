//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "RestaurantManager.h"
#import "meanManager.h"
#import "cheeryManager.h"


@interface Kitchen : NSObject

@property (nonatomic) id<RestaurantManager> delegate;
@property (nonatomic) meanManager* aMeanManager;
@property (nonatomic) cheeryManager* aCheeryManager;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;



@end

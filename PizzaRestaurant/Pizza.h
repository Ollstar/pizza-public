//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef NS_ENUM(NSInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge,
};

@property(nonatomic,strong)NSArray *toppings;
@property(nonatomic,assign)PizzaSize size;

//- (Pizza *)initWithSize:(NSArray *)toppings andSize:(PizzaSize)size;
+ (Pizza *)pizzaWithSize:(NSArray *)toppings andSize:(PizzaSize)size;


+ (PizzaSize) pizzaSize:(NSString *)pizzaString;


@end

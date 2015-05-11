//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "meanManager.h"
#import "cheeryManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Select Manager: Size: Toppings:");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        PizzaSize pizzaSize;
        NSArray *toppings;
        
        while (TRUE) {
//      Will take user input and make pizza.
        Pizza *myPizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
        //add pizza to delivery service pizza log
        
        }
        
    return 0;
    }
}

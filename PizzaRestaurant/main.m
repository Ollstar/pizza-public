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
        
        Kitchen *restaurantKitchen = [Kitchen new];
        cheeryManager *cMngr = [cheeryManager new];
        meanManager *mMngr = [meanManager new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *managerSelection = commandWords[0];
            PizzaSize pizzaSize = [Pizza pizzaSize:commandWords[1]];
            NSArray *toppings = [commandWords objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, commandWords.count-2)]];

            if ([managerSelection isEqualToString:@"mean"])
                restaurantKitchen.delegate = mMngr;
            else if ([managerSelection isEqualToString:@"cheery"])
                restaurantKitchen.delegate = cMngr;
            
            Pizza *myPizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}


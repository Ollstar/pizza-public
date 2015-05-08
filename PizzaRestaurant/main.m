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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
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
            PizzaSize pizzaSize = [Pizza pizzaSize:[commandWords objectAtIndex:0]];
            NSArray *toppings = [commandWords objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(1, commandWords.count-1)]];
            
            Pizza *myPizza =[restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            

            
            
            
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}


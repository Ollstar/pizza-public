//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.aMeanManager = [[meanManager alloc]init];
        self.aCheeryManager = [[cheeryManager alloc]init];
    }
    return self;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {

    NSLog(@"> ");
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSLog(@"Input was %@", inputString);
    
    NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
    NSString *managerSelection = commandWords[0];
    size = [Pizza pizzaSize:commandWords[1]];
    toppings = [commandWords objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, commandWords.count-2)]];
    
    if ([managerSelection isEqualToString:@"mean"]) {
        self.delegate = self.aMeanManager;
    } else if ([managerSelection isEqualToString:@"cheery"]){
        self.delegate = self.aCheeryManager;
    } else {
        self.delegate = nil;
    }
    
    if (self.delegate) {
        Pizza *pizza;
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            size = PizzaSizeLarge;
        }
            if (!self.delegate || [self.delegate kitchen:self shouldMakePizzaOfSize:size toppings:toppings]) {
                pizza = [Pizza pizzaWithToppings:toppings andSize:size];
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            } else {
            pizza = nil;
            }
        }
    }
    Pizza *pizza = [Pizza pizzaWithToppings:toppings andSize:size];
    return pizza;
}
@end


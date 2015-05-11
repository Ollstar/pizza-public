//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

@property (nonatomic)NSMutableArray *pizzaLog;
@property (nonatomic)DeliveryCar *deliveryCar;

- (void)deliverPizza:(Pizza *)pizza;



//- (NSMutableArray *)printPizzaLog:(NSString *)pizzaLog;



@end

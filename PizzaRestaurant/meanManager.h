//
//  meanManager.h
//  PizzaRestaurant
//
//  Created by Oliver Andrews on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantManager.h"

@interface meanManager : NSObject <RestaurantManager>

@property (nonatomic) DeliveryService *deliveryService;

@end

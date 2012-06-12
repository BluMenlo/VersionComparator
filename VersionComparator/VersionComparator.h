//
//  VersionComparator.h
//  ZimmerSales
//
//  Created by Dan Hanly on 12/06/2012.
//  Copyright (c) 2012 Celf Creative. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VersionComparator : NSObject

+ (NSInteger)getVersionComparatorProduct:(NSString *)version;
+ (NSArray *)normaliseValuesFromArray:(NSArray *)array;

@end

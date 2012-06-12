//
//  VersionComparator.m
//  ZimmerSales
//
//  Created by Dan Hanly on 12/06/2012.
//  Copyright (c) 2012 Celf Creative. All rights reserved.
//

#import "VersionComparator.h"

@implementation VersionComparator

static NSInteger maxValues = 3;

+ (NSInteger)getVersionComparatorProduct:(NSString *)version{
    NSInteger comparatorProduct = 1;
    NSArray *versionArray = [version componentsSeparatedByString:@"."];
    versionArray = [self normaliseValuesFromArray:versionArray];
    versionArray = [[versionArray reverseObjectEnumerator] allObjects];
    NSInteger multiplier = 1;
    for (NSString *segment in versionArray) {
        NSInteger segmentInt = [segment integerValue];
        NSInteger currentComparator = comparatorProduct;
        segmentInt+=1;
        comparatorProduct = (segmentInt * multiplier) + currentComparator;
        multiplier+=100;
    }
    return comparatorProduct;
}

+ (NSArray *)normaliseValuesFromArray:(NSArray *)array{
    NSMutableArray *mutableArray = [array mutableCopy];
    if([mutableArray count]<maxValues){
        NSInteger difference = maxValues-[mutableArray count];
        for (NSInteger i=0; i<difference; i++) {
            [mutableArray addObject:@"0"];
        }
        return [[NSArray alloc] initWithArray:mutableArray]; 
    } else {
        return array;
    }
}

@end

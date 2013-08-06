//
//  NSString+VersionComparison.m
//
//  Created by Justin Buchanan 2 on 8/6/13.
//  Copyright (c) 2013 BluMenlo. All rights reserved.
//

#import "NSString+VersionComparison.h"
#import "VersionComparator.h"


@implementation NSString (VersionComparison)

- (BOOL)isGreaterThanVersion:(NSString *)versionB {
	return [VersionComparator isVersion:self greaterThanVersion:versionB];
}

- (BOOL)isGreaterThanOrEqualToVersion:(NSString *)versionB {
	return [VersionComparator isVersion:self greaterThanOrEqualToVersion:versionB];
}

@end

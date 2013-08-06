//
//  NSString+VersionComparison.h
//
//  Created by Justin Buchanan on 8/6/13.
//  Copyright (c) 2013 BluMenlo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (VersionComparison)

- (BOOL)isGreaterThanVersion:(NSString *)versionB;
- (BOOL)isGreaterThanOrEqualToVersion:(NSString *)versionB;

@end

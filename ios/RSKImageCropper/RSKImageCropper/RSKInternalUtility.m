//
//  RSKInternalUtility.m
//  RSKImageCropperExample
//
//  Created by Ruslan Skorb on 9/5/15.
//  Copyright (c) 2015 Ruslan Skorb. All rights reserved.
//

#import "RSKInternalUtility.h"

NSString * RSKLocalizedString(NSString *key, NSString *comment)
{
    if(key == @"Move and Scale"){
        return @"Cдвиг и масштаб";
    }
    if(key == @"Cancel"){
        return @"Отменить";
    }
    if(key == @"Choose"){
        return @"Выбрать";
    }
    return [[[RSKInternalUtility class] bundleForStrings] localizedStringForKey:key value:key table:@"RSKImageCropper"];
}

@implementation RSKInternalUtility

+ (NSBundle *)bundleForStrings
{
    static NSBundle *bundle;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSBundle *bundleForClass = [NSBundle bundleForClass:[self class]];
        NSString *stringsBundlePath = [bundleForClass pathForResource:@"ru" ofType:@"lproj"];
        bundle = [NSBundle bundleWithPath:stringsBundlePath] ?: bundleForClass;
    });
    
    return bundle;
}

@end

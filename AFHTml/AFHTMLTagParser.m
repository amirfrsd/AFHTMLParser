//
//  AFHTMLTagParser.m
//  AFHTMLTagParser
//
//  Created by Amir Farsad on 5/23/16.
//
//

#import "AFHTMLTagParser.h"

@implementation AFHTMLTagParser

-(NSString *)parseTheStringBetween:(NSString *)startTag and: (NSString *)endTag inURL:(NSString *)url{
    NSString *stringOne = startTag;
    NSString *stringTwo = endTag;
    NSString *urlString = url;
    NSURL *urlToGo = [NSURL URLWithString:urlString];
    NSString *urlProcessor = [NSString stringWithContentsOfURL:urlToGo encoding:NSUTF8StringEncoding error:nil];
    NSString* scanString = @"";
    if (urlProcessor.length > 0) {
        
        NSScanner* scanner = [[NSScanner alloc] initWithString:urlProcessor];
        
        @try {
            [scanner scanUpToString:stringOne intoString:nil];
            scanner.scanLocation += [stringOne length];
            [scanner scanUpToString:stringTwo intoString:&scanString];
        }
        @finally {
            return scanString;
        }
    }
}
@end
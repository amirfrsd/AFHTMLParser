//
//  AFHTMLTagParser.h
//  AFHTMLTagParser
//
//  Created by Amir Farsad on 5/23/16.
//
//

#import <Foundation/Foundation.h>

@interface AFHTMLTagParser : NSObject
-(NSString *)parseTheStringBetween:(NSString *)startTag and: (NSString *)endTag inURL:(NSString *)url;
@end

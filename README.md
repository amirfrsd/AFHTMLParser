# AFHTMLParser
A Tool to parse String between to HTML tags

# Your Header File

  #import "AFHTMLTagParser.h"
  
  @class AFHTMLTagParser;
  
  AFHTMLTagParser *tagParse;

# Your Main File

  tagParse = [[AFHTMLTagParser alloc] init];
  
  NSString *responseString = [tagParse parseTheStringBetween:stringToFetch and:stringToFetchTwo inURL:URLOfString];

# Demo file included :)

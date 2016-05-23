//
//  ViewController.m
//  AFHTml
//
//  Created by Amir Farsad on 5/23/16.
//  Copyright © 2016 Emersad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tagParse = [[AFHTMLTagParser alloc] init];
    NSString *stringToFetch = @"<h2>";
    NSString *stringToFetchTwo = @"</h2>";
    NSString *URLOfString = @"http://amirfarsad.me";
    NSString *responseString = [tagParse parseTheStringBetween:stringToFetch and:stringToFetchTwo inURL:URLOfString];
    NSLog(responseString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

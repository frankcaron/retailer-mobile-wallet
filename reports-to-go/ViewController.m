//
//  ViewController.m
//  reports-to-go
//
//  Created by Frank Caron on 2019-10-06
//  Copyright © 2019 SFDX. All rights reserved.
//

#import "ViewController.h"
@import SafariServices;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Web View
    //Size and lock the web view
    self.webView.frame=self.view.bounds;
    self.webView.scalesPageToFit = YES;
    
    // Load the url into the webview
    NSURL *url = [NSURL URLWithString:@"https://sdodemo-main-166ce2cf6b6-16a7f129cc2.force.com/preferences/s/wallet"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    // Load the web view
    [self.webView loadRequest:request];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}



@end

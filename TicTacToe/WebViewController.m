//
//  WebViewController.m
//  TicTacToe
//
//  Created by Chi Yang on 5/17/15.
//  Copyright (c) 2015 Brent Dady. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadReqestWithText:@"http://en.wikipedia.org/wiki/Tic-tac-toe"];
    self.title = @"Help-TicTacToe";
    // Do any additional setup after loading the view.
}

-(void)loadReqestWithText:(NSString *)text{
    NSURL *url = [NSURL URLWithString:text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

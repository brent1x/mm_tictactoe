//
//  ViewController.m
//  TicTacToe
//
//  Created by Brent Dady & Chloe Yang on 5/14/15.
//  Copyright (c) 2015 Brent Dady & Chloe Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property int whichLabelPressed;
@property int whichPlayerCounter;
@property NSString *whoWins;
@property CGPoint oStartingPoint;
@property CGPoint xStartingPoint;

@property (weak, nonatomic) IBOutlet UILabel *xPlayerLabel;
@property (weak, nonatomic) IBOutlet UILabel *oPlayerLabel;


//@property NSArray* labelArray;
//@property NSSet * labelSet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerCounter = 1;
    self.oStartingPoint = self.oPlayerLabel.center;
    self.xStartingPoint = self.xPlayerLabel.center;
    //self.labelArray = [self.labelOne, self.labelT
    //self.labelSet = [NSSet setWithObjects:self.labelOne, self.labelTwo, nil];

}

#pragma mark - X & O Logic

- (void)findLabelUsingPoint:(CGPoint)point {
     
//    int i = 1;
//
//    for (id item in self.labelSet) {
//    if (CGRectContainsPoint(item.frame, point)) {
//        self.whichLabelPressed = i;self.whichPlayerCounter++;
//        if (self.whichPlayerCounter % 2 == 0) {
//            self.labelOne.text = @"O";
//            self.labelOne.textColor = [UIColor redColor];
//        } else{
//            self.labelOne.text = @"X";
//            self.labelOne.textColor = [UIColor blueColor];
//        }
//    }
//        i++;
//    }

    if (CGRectContainsPoint(self.labelOne.frame, point)) {
        self.whichLabelPressed = 1;
        if (self.labelOne.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelOne.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelOne.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelOne.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelOne.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelOne.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelTwo.frame, point)) {
        self.whichLabelPressed = 2;
        if (self.labelTwo.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelTwo.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelTwo.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelTwo.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelTwo.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelTwo.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelThree.frame, point)) {
        self.whichLabelPressed = 3;
        if (self.labelThree.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelThree.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelThree.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelThree.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelThree.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelThree.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelFour.frame, point)) {
        self.whichLabelPressed = 4;
        if (self.labelFour.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelFour.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelFour.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelFour.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelFour.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelFour.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelFive.frame, point)) {
        self.whichLabelPressed = 5;
        if (self.labelFive.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelFive.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelFive.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelFive.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelFive.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelFive.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelSix.frame, point)) {
        self.whichLabelPressed = 6;
        if (self.labelSix.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelSix.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelSix.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelSix.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelSix.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelSix.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
        self.whichLabelPressed = 7;
        if (self.labelSeven.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelSeven.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelSeven.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelSeven.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelSeven.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelSeven.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelEight.frame, point)) {
        self.whichLabelPressed = 8;
        if (self.labelEight.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelEight.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelEight.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelEight.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelEight.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelEight.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }

    if (CGRectContainsPoint(self.labelNine.frame, point)) {
        self.whichLabelPressed = 9;
        if (self.labelNine.text.length == 0 && self.whichPlayerCounter % 2 == 0) {
            self.labelNine.text = @"O";
            self.whichPlayerLabel.text = @"Player X's Turn";
            self.labelNine.textColor = [UIColor redColor];
            self.whichPlayerCounter++;
        } else if (self.labelNine.text.length == 0 && self.whichPlayerCounter % 2 == 1){
            self.labelNine.text = @"X";
            self.whichPlayerLabel.text = @"Player O's Turn";
            self.labelNine.textColor = [UIColor blueColor];
            self.whichPlayerCounter++;
        }
    }
    self.whoWins = [self whoWon];
}

#pragma mark - Determine Winner Method

- (NSString *)whoWon {

    // Check for wins in the leftmost column and in the topmost row.
    if (self.labelOne.text.length > 0) {
        if (((self.labelOne.text == self.labelTwo.text) && (self.labelOne.text == self.labelThree.text)) || ((self.labelOne.text== self.labelFour.text) && (self.labelOne.text == self.labelSeven.text))) {
            UIAlertView *alertView = [[UIAlertView alloc]init];
            alertView.title = [NSString stringWithFormat:@"%@ wins!",self.labelOne.text];
            [alertView addButtonWithTitle:@"Start a new game"];
            alertView.delegate = self;
            [alertView show];
            return self.labelOne.text;
        }

    }

    // Check for wins that go through the middle of the board.
    if (self.labelFive.text.length  > 0) {
        if (((self.labelFive.text == self.labelFour.text) && (self.labelFive.text == self.labelSix.text)) ||
            ((self.labelFive.text == self.labelTwo.text) && (self.labelFive.text == self.labelEight.text)) ||
            ((self.labelFive.text == self.labelOne.text) && (self.labelFive.text == self.labelNine.text)) ||
            ((self.labelFive.text == self.labelThree.text) && (self.labelFive.text == self.labelSeven.text))) {
            UIAlertView *alertView = [[UIAlertView alloc]init];
            alertView.title = [NSString stringWithFormat:@"%@ wins!",self.labelFive.text];
            [alertView addButtonWithTitle:@"Start a new game"];
            alertView.delegate = self;
            [alertView show];
            return self.labelFive.text;
            
        }
    }

    // Check for win in the rightmost column and in the lowest row.
    if (self.labelNine.text.length > 0) {
        if (((self.labelNine.text == self.labelSix.text) && (self.labelNine.text == self.labelThree.text)) ||
            ((self.labelNine.text == self.labelEight.text) && (self.labelNine.text == self.labelSeven.text))) {
            UIAlertView *alertView = [[UIAlertView alloc]init];
            alertView.title = [NSString stringWithFormat:@"%@ wins!",self.labelNine.text];
            [alertView addButtonWithTitle:@"Start a new game"];
            alertView.delegate = self;
            [alertView show];
            return self.labelNine.text;
            
        }
    }
    if (self.labelOne.text.length > 0 &&
        self.labelTwo.text.length > 0 &&
        self.labelThree.text.length > 0 &&
        self.labelFour.text.length > 0 &&
        self.labelFive.text.length > 0 &&
        self.labelSix.text.length > 0 &&
        self.labelSeven.text.length > 0 &&
        self.labelEight.text.length > 0 &&
        self.labelNine.text.length > 0 ) {
        NSLog(@"Tie");
        UIAlertView *alertView = [[UIAlertView alloc]init];
        alertView.title = @"TIE! NO ONE WINS!";
        [alertView addButtonWithTitle:@"Start a new game"];
        alertView.delegate = self;
        [alertView show];
        return @"Tie";
    }

    return @"Not filled";
}

#pragma mark - Tap Method

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    [self findLabelUsingPoint: point];
}

#pragma mark - Reset Game Method

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        self.labelOne.text = NULL;
        self.labelTwo.text = NULL;
        self.labelThree.text = NULL;
        self.labelFour.text = NULL;
        self.labelFive.text = NULL;
        self.labelSix.text = NULL;
        self.labelSeven.text = NULL;
        self.labelEight.text = NULL;
        self.labelNine.text = NULL;
        self.whichPlayerCounter = 1;
        self.whichPlayerLabel.text = @"Player X's Turn";
    }
}

- (IBAction)didPan:(UIPanGestureRecognizer *)sender {
    CGPoint pointTwo = [sender locationInView:self.view];
    if (self.whichPlayerCounter % 2 == 1) {
        self.xPlayerLabel.center = pointTwo;
        if (sender.state == UIGestureRecognizerStateEnded && (CGRectContainsPoint(self.labelOne.frame, pointTwo)||CGRectContainsPoint(self.labelTwo.frame, pointTwo)||CGRectContainsPoint(self.labelThree.frame, pointTwo)||CGRectContainsPoint(self.labelFour.frame, pointTwo)||CGRectContainsPoint(self.labelFive.frame, pointTwo)||CGRectContainsPoint(self.labelSix.frame, pointTwo)||CGRectContainsPoint(self.labelSeven.frame, pointTwo)||CGRectContainsPoint(self.labelEight.frame, pointTwo)||CGRectContainsPoint(self.labelNine.frame, pointTwo)))

        {
            //move the label back & set the text for textlabel
            self.xPlayerLabel.center = self.xStartingPoint;

        }
    } else if (self.whichPlayerCounter % 2 == 0) {
        self.oPlayerLabel.center = pointTwo;
    }
}

@end









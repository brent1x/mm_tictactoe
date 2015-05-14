//
//  ViewController.m
//  TicTacToe
//
//  Created by Brent Dady on 5/14/15.
//  Copyright (c) 2015 Brent Dady. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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
//@property NSArray* labelArray;
@property NSSet * labelSet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.whichPlayerCounter = 1;
    //self.labelArray = [self.labelOne, self.labelT
    self.labelSet = [NSSet setWithObjects:self.labelOne, self.labelTwo, nil];

}

#pragma mark Tap Methods

- (void)findLabelUsingPoint:(CGPoint)point {

    /*int i = 1;

    for (id item in self.labelSet) {
    if (CGRectContainsPoint(item.frame, point)) {
        self.whichLabelPressed = i;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0) {
            self.labelOne.text = @"O";
            self.labelOne.textColor = [UIColor redColor];
        } else{
            self.labelOne.text = @"X";
            self.labelOne.textColor = [UIColor blueColor];
        }
    }
        i++;
    }
 */
    if (CGRectContainsPoint(self.labelOne.frame, point)) {
        self.whichLabelPressed = 1;self.whichPlayerCounter++;
        if (![self.labelOne.text isEqual:@"X"] && self.whichPlayerCounter % 2 == 0) {
            self.labelOne.text = @"O";
            self.labelOne.textColor = [UIColor redColor];
        } else {
            self.labelOne.text = @"X";
            self.labelOne.textColor = [UIColor blueColor];
        }
    }

    if (CGRectContainsPoint(self.labelTwo.frame, point)) {
        self.whichLabelPressed = 2;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelTwo.text = @"O";
            self.labelTwo.textColor = [UIColor redColor];
        } else {
            self.labelTwo.text = @"X";
            self.labelTwo.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelThree.frame, point)) {
        self.whichLabelPressed = 3;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelThree.text = @"O";
            self.labelThree.textColor = [UIColor redColor];
        } else {
            self.labelThree.text = @"X";
            self.labelThree.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelFour.frame, point)) {
        self.whichLabelPressed = 4;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelFour.text = @"O";
            self.labelFour.textColor = [UIColor redColor];
        } else {
            self.labelFour.text = @"X";
            self.labelFour.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelFive.frame, point)) {
        self.whichLabelPressed = 5;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelFive.text = @"O";
            self.labelFive.textColor = [UIColor redColor];
        } else {
            self.labelFive.text = @"X";
            self.labelFive.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelSix.frame, point)) {
        self.whichLabelPressed = 6;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelSix.text = @"O";
            self.labelSix.textColor = [UIColor redColor];
        } else {
            self.labelSix.text = @"X";
            self.labelSix.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
        self.whichLabelPressed = 7;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelSeven.text = @"O";
            self.labelSeven.textColor = [UIColor redColor];
        } else {
            self.labelSeven.text = @"X";
            self.labelSeven.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelEight.frame, point)) {
        self.whichLabelPressed = 8;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelEight.text = @"O";
            self.labelEight.textColor = [UIColor redColor];
        } else {
            self.labelEight.text = @"X";
            self.labelEight.textColor = [UIColor blueColor];
        }
    }
    if (CGRectContainsPoint(self.labelNine.frame, point)) {
        self.whichLabelPressed = 9;self.whichPlayerCounter++;
        if (self.whichPlayerCounter % 2 == 0 && self.whichPlayerCounter % 2 < 10) {
            self.labelNine.text = @"O";
            self.labelNine.textColor = [UIColor redColor];
        } else {
            self.labelNine.text = @"X";
            self.labelNine.textColor = [UIColor blueColor];
        }
    }
    //self.whichPlayerCounter++;

}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    [self findLabelUsingPoint: point];
    if(self.whichPlayerCounter % 2==0){
        self.whichPlayerLabel.text = @"Player O";
    } else{
        self.whichPlayerLabel.text = @"Player X";
    }
    //NSLog(@"%i",self.whichLabelPressed);
    //NSLog(@"%i",self.whichPlayerCounter);
}

@end









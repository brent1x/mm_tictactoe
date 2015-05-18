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
@property (weak, nonatomic) IBOutlet UILabel *labelCounting;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlButton;

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property int whichPlayerCounter;
@property NSString *whoWins;
@property CGPoint oStartingPoint;
@property CGPoint xStartingPoint;
@property int remainingTime;
@property NSTimer *countdownTimer;
@property int whichPlayerCounterPrevious;


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
//    [self startCountdown];
}

#pragma mark - X & O Logic

- (void)findLabelUsingPoint:(CGPoint)point {

    if (CGRectContainsPoint(self.labelOne.frame, point)) {
        if (self.labelOne.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelOne textToBeFilled:@"O"];
        } else if (self.labelOne.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelOne textToBeFilled:@"X"];
        } else if (self.labelOne.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelOne textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelTwo.frame, point)) {
        if (self.labelTwo.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelTwo textToBeFilled:@"O"];
        } else if (self.labelTwo.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelTwo textToBeFilled:@"X"];
        } else if (self.labelTwo.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelTwo textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelThree.frame, point)) {
        if (self.labelThree.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelThree textToBeFilled:@"O"];
        } else if (self.labelThree.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelThree textToBeFilled:@"X"];
        } else if (self.labelThree.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelThree textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelFour.frame, point)) {
        if (self.labelFour.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelFour textToBeFilled:@"O"];
        } else if (self.labelFour.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelFour textToBeFilled:@"X"];
        } else if (self.labelFour.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelFour textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelFive.frame, point)) {
        if (self.labelFive.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelFive textToBeFilled:@"O"];
        } else if (self.labelFive.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelFive textToBeFilled:@"X"];
        } else if (self.labelFive.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelFive textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelSix.frame, point)) {
        if (self.labelSix.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelSix textToBeFilled:@"O"];
        } else if (self.labelSix.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelSix textToBeFilled:@"X"];
        } else if (self.labelSix.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelSix textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
        if (self.labelSeven.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelSeven textToBeFilled:@"O"];
        } else if (self.labelSeven.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelSeven textToBeFilled:@"X"];
        } else if (self.labelSeven.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelSeven textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelEight.frame, point)) {
        if (self.labelEight.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelEight textToBeFilled:@"O"];
        } else if (self.labelEight.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelEight textToBeFilled:@"X"];
        } else if (self.labelEight.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelEight textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

    if (CGRectContainsPoint(self.labelNine.frame, point)) {
        if (self.labelNine.text.length == 0 && self.whichPlayerCounter % 2 == 0 && self.segmentedControlButton.selectedSegmentIndex == 0) {
            [self fillLabel:self.labelNine textToBeFilled:@"O"];
        } else if (self.labelNine.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 0){
            [self fillLabel:self.labelNine textToBeFilled:@"X"];
        } else if (self.labelNine.text.length == 0 && self.whichPlayerCounter % 2 == 1 && self.segmentedControlButton.selectedSegmentIndex == 1){
            [self fillLabel:self.labelNine textToBeFilled:@"X"];
            [self fillAnEmptyLabel];
        }
    }

}

#pragma mark - Determine Winner Method

- (NSString *)whoWon {

    // Check for wins in the leftmost column and in the topmost row.
    if (self.labelOne.text.length > 0) {
        if (([self.labelOne.text isEqualToString:self.labelTwo.text] && [self.labelOne.text isEqualToString:self.labelThree.text]) || ([self.labelOne.text isEqualToString:self.labelFour.text] && [self.labelOne.text isEqualToString:self.labelSeven.text])) {
            UIAlertView *alertView = [[UIAlertView alloc]init];
            alertView.title = [NSString stringWithFormat:@"%@ wins!",self.labelOne.text];
            [alertView addButtonWithTitle:@"Start a new game"];
            alertView.delegate = self;
            [alertView show];
            return self.labelOne.text;
        }

    }

    // Check for wins that go through the middle of the board.
    if (self.labelFive.text.length > 0) {
        if (([self.labelFive.text isEqualToString:self.labelFour.text] && [self.labelFive.text isEqualToString:self.labelSix.text]) ||([self.labelFive.text isEqualToString:self.labelTwo.text] && [self.labelFive.text isEqualToString:self.labelEight.text]) ||([self.labelFive.text isEqualToString:self.labelOne.text] && [self.labelFive.text isEqualToString:self.labelNine.text]) ||([self.labelFive.text isEqualToString:self.labelThree.text] && [self.labelFive.text isEqualToString:self.labelSeven.text])) {
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
        if (([self.labelNine.text isEqualToString:self.labelSix.text] && [self.labelNine.text isEqualToString:self.labelThree.text]) ||([self.labelNine.text isEqualToString:self.labelEight.text] && [self.labelNine.text isEqualToString:self.labelSeven.text])) {
            UIAlertView *alertView = [[UIAlertView alloc]init];
            alertView.title = [NSString stringWithFormat:@"%@ wins!",self.labelNine.text];
            [alertView addButtonWithTitle:@"Start a new game"];
            alertView.delegate = self;
            [alertView show];
            return self.labelNine.text;
        }
    }

    // Check for tie
    if (self.labelOne.text.length > 0 && self.labelTwo.text.length > 0 && self.labelThree.text.length > 0 && self.labelFour.text.length > 0 &&self.labelFive.text.length > 0 && self.labelSix.text.length > 0 && self.labelSeven.text.length > 0 && self.labelEight.text.length > 0 && self.labelNine.text.length > 0 ) {
        UIAlertView *alertView = [[UIAlertView alloc]init];
        alertView.title = @"TIE! NO ONE WINS!";
        [alertView addButtonWithTitle:@"Start a new game"];
        alertView.delegate = self;
        [alertView show];
        return @"Tie";
    }
    return @"Not filled";
}

#pragma mark - Tap Methods

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    [self findLabelUsingPoint: point];
}

#pragma mark - Reset Game Method

- (IBAction)didPan:(UIPanGestureRecognizer *)sender {
    CGPoint pointTwo = [sender locationInView:self.view];
    if (self.whichPlayerCounter % 2 == 1) {
        self.xPlayerLabel.center = pointTwo;
        if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelOne.frame, pointTwo))

        {
            // Move the label back & set the text for textlabel
            [self fillLabel:self.labelOne textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }

        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelTwo.frame, pointTwo)){
            [self fillLabel:self.labelTwo textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelThree.frame, pointTwo)){
            [self fillLabel:self.labelThree textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelFour.frame, pointTwo)){
            [self fillLabel:self.labelFour textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelFive.frame, pointTwo)){
            [self fillLabel:self.labelFive textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelSix.frame, pointTwo)){
            [self fillLabel:self.labelSix textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelSeven.frame, pointTwo)){
            [self fillLabel:self.labelSeven textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelEight.frame, pointTwo)){
            [self fillLabel:self.labelEight textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelNine.frame, pointTwo)){
            [self fillLabel:self.labelNine textToBeFilled:@"X"];
            self.xPlayerLabel.center = self.xStartingPoint;
            if (self.segmentedControlButton.selectedSegmentIndex == 1) {
                [self fillAnEmptyLabel];
            }
        }
    } else if (self.whichPlayerCounter % 2 == 0) {
        self.oPlayerLabel.center = pointTwo;
        if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelOne.frame, pointTwo))

        {
            // Move the label back & set the text for textlabel
            [self fillLabel:self.labelOne textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;

        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelTwo.frame, pointTwo)){
            [self fillLabel:self.labelTwo textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelThree.frame, pointTwo)){
            [self fillLabel:self.labelThree textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelFour.frame, pointTwo)){
            [self fillLabel:self.labelFour textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelFive.frame, pointTwo)){
            [self fillLabel:self.labelFive textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelSix.frame, pointTwo)){
            [self fillLabel:self.labelSix textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelSeven.frame, pointTwo)){
            [self fillLabel:self.labelSeven textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelEight.frame, pointTwo)){
            [self fillLabel:self.labelEight textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }else if (sender.state == UIGestureRecognizerStateEnded && CGRectContainsPoint(self.labelNine.frame, pointTwo)){
            [self fillLabel:self.labelNine textToBeFilled:@"O"];
            self.oPlayerLabel.center = self.oStartingPoint;
        }
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        [self gameReset];
    }
}

-(void)gameReset{
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
    self.whichPlayerCounter = 1;
    self.labelCounting.text = @"10";
    [self.countdownTimer invalidate];
}

-(void)fillLabel:(UILabel *) theLabel textToBeFilled:(NSString *) theString{
    [self.countdownTimer invalidate];
    self.whichPlayerCounterPrevious = self.whichPlayerCounter;
    if ([theString isEqualToString:@"X"]) {
        theLabel.text = [NSString stringWithFormat:@"%@", theString];
        self.whichPlayerLabel.text = @"Player O's Turn";
        theLabel.textColor = [UIColor blueColor];
    }else if ([theString isEqualToString:@"O"]){
        theLabel.text = [NSString stringWithFormat:@"%@", theString];
        self.whichPlayerLabel.text = @"Player X's Turn";
        theLabel.textColor = [UIColor redColor];
    }
    self.whoWins = [self whoWon];
    self.whichPlayerCounter++;
    [self startCountdown];

}

#pragma mark - timer methods

- (void)startCountdown
{
    self.remainingTime = 10;
    self.labelCounting.text = [NSString stringWithFormat:@"%i", self.remainingTime];
    self.countdownTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(countdownTimer:)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (void)countdownTimer:(NSTimer *)timer {
    self.remainingTime--;
    self.labelCounting.text = [NSString stringWithFormat:@"%i", self.remainingTime];
    if (self.remainingTime == 0) {
        [timer invalidate];
        timer = nil;
        UIAlertView *alertView = [[UIAlertView alloc]init];
        alertView.title = [NSString stringWithFormat:@"Oops. Time's up!"];
        [alertView addButtonWithTitle:@"Start a new game"];
        alertView.delegate = self;
        [alertView show];
        [self gameReset];
        self.remainingTime = 10;
    }
}

#pragma mark - not that intelligent AI method

-(void)fillAnEmptyLabel{
    if (self.labelFive.text.length == 0) {
        [self fillLabel:self.labelFive textToBeFilled:@"O"];
    } else if (self.labelNine.text.length == 0){
        [self fillLabel:self.labelNine textToBeFilled:@"O"];
    } else if (self.labelSeven.text.length == 0){
        [self fillLabel:self.labelSeven textToBeFilled:@"O"];
    } else if (self.labelThree.text.length == 0){
        [self fillLabel:self.labelThree textToBeFilled:@"O"];
    } else if (self.labelEight.text.length == 0){
        [self fillLabel:self.labelEight textToBeFilled:@"O"];
    } else if (self.labelSix.text.length == 0){
        [self fillLabel:self.labelSix textToBeFilled:@"O"];
    } else if (self.labelFour.text.length == 0){
        [self fillLabel:self.labelFour textToBeFilled:@"O"];
    } else if (self.labelTwo.text.length == 0){
        [self fillLabel:self.labelTwo textToBeFilled:@"O"];
    } else if (self.labelOne.text.length == 0){
        [self fillLabel:self.labelOne textToBeFilled:@"O"];
    }
}

@end









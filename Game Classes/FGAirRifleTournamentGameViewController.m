//
//  FGAirRifleTournamentGameViewController.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGAirRifleTournamentGameViewController.h"
#define circleDistance_AirRifle 15
#define cursorRectArea_AirRifle 147

@interface FGAirRifleTournamentGameViewController ()

@end

@implementation FGAirRifleTournamentGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        cursorMoveSpeed=3.0;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self InitializeLogic];
    // Do any additional setup after loading the view from its nib.
    timer_logic = [NSTimer scheduledTimerWithTimeInterval:.06 target:self selector:@selector(logicUpdate) userInfo:nil repeats:YES];
    timer_render = [NSTimer scheduledTimerWithTimeInterval:.06 target:self selector:@selector(renderUpdate) userInfo:nil repeats:YES];
    
    iv_bulletHole = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cursor2 2.png"]];
    iv_bulletHole.hidden = YES;
    view_scoreBar.hidden = YES;
    [self.view addSubview:iv_bulletHole];
    [iv_bulletHole release];
}



#pragma mark-status machine
-(void)logicUpdate
{
    //NSLog(@"logicUpdate");
    shakeDX=0;
    shakeDY=0;
    
    if (timerCount%10) {
        [self shake_crusor];
    } 
    if (iv_crusor.center.x>self.view.center.x+147/2) {
        shakeDX=0;
        if (currentStatus==currentStatus_right) {
            dX=0;
        }
    }
    if (iv_crusor.center.x<self.view.center.x-147/2) {
        shakeDX=0;
        if (currentStatus==currentStatus_left) {
            dX=0;
        }
    }
    if (iv_crusor.center.y>self.view.center.y+147/2) {
        shakeDY=0;
        if (currentStatus==currentStatus_down) {
            dY=0;
        }
    }
    if (iv_crusor.center.y<self.view.center.y-147/2) {
        shakeDY=0;
        if (currentStatus==currentStatus_up) {
            dY=0;
        }
    }
    
            iv_crusor.center=CGPointMake(iv_crusor.center.x + dX+shakeDX, iv_crusor.center.y + dY+shakeDY);
    timerCount=timerCount<200000?timerCount+1:0;

}

-(void)renderUpdate
{
    
}

-(void)dealloc
{
    NSLog(@":::::>dealloc FGAirRifleTournamentGameViewController");
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    iv_bulletHole = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction) buttonAction_left:(UIButton*)_btn;
{
    dX=0.0;
    currentStatus = currentStatus_unknow;
}
-(IBAction) buttonAction_right:(UIButton*)_btn;
{
    dX=0.0;
    currentStatus = currentStatus_unknow;
}
-(IBAction) buttonAction_down:(UIButton*)_btn;
{
    dY=0.0;
    currentStatus = currentStatus_unknow;
}
-(IBAction) buttonAction_up:(UIButton*)_btn;
{
    dY=0.0;
    currentStatus = currentStatus_unknow;
}

-(void)moveTargetUp
{
    view_scoreBar.hidden = NO;
    target.hidden=YES;
    iv_crusor.hidden=YES;
    iv_bulletHole.hidden=YES;
    l_total.text = [NSString stringWithFormat:@"%.1f",totalscore]; 
    view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480+76/2);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(moveUpFinished)];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:2];
    view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480-76/2);
    [UIView commitAnimations];
}

-(void)moveUpFinished
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDelay:2];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDidStopSelector:@selector(moveDownFinished)];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480+76/2);
    [UIView commitAnimations];
}

-(void)moveDownFinished
{
    //
    target.hidden=NO;
    iv_crusor.hidden=NO;
    view_scoreBar.hidden = YES;
}

-(IBAction) buttonAction_fire:(UIButton*)_btn;
{
    iv_bulletHole.hidden = NO;
    if(!view_scoreBar.hidden)
        return;
    [self moveTargetUp];
    iv_bulletHole.center = iv_crusor.center;
    float xDist = (iv_crusor.center.x - self.view.center.x);
    float yDist = (iv_crusor.center.y - self.view.center.y);
    float distance = sqrt((xDist * xDist) + (yDist * yDist));
    float score = 11.0-11.0/151.0*distance;
    totalscore = score + totalscore;
    l_total.text = [NSString stringWithFormat:@"%.1f",totalscore]; 

    NSLog(@"total=%f",totalscore);
    scorecount=scorecount+1;
    if (scorecount == 1) {
        l_1.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 2) {
        l_2.text = [NSString stringWithFormat:@"%.1f",score];         
    }
    if (scorecount == 3) {
        l_3.text = [NSString stringWithFormat:@"%.1f",score];         
    }
    if (scorecount == 4) {
        l_4.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 5) {
        l_5.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 6) {
        l_6.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 7) {
        l_7.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 8) {
        l_8.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 9) {
        l_9.text = [NSString stringWithFormat:@"%.1f",score];
    }
    if (scorecount == 10) {
        l_10.text = [NSString stringWithFormat:@"%.1f",score];
        scorecount = 0;
    }
    float randomCursorX=self.view.center.x+arc4random()%cursorRectArea_AirRifle/2;
    float randomCursorY=self.view.center.y+arc4random()%cursorRectArea_AirRifle/2;
    
    iv_crusor.center=CGPointMake(randomCursorX, randomCursorY);
}
-(IBAction) buttonAction_left_pressDown:(UIButton*)_btn;
{
    dX=-cursorMoveSpeed;
    currentStatus = currentStatus_left;
    
}
-(IBAction) buttonAction_right_pressDown:(UIButton*)_btn;
{
    dX=cursorMoveSpeed;
    currentStatus = currentStatus_right;
}
-(IBAction) buttonAction_down_pressDown:(UIButton*)_btn;
{
    dY=cursorMoveSpeed;
    currentStatus = currentStatus_down;
}
-(IBAction) buttonAction_up_pressDown:(UIButton*)_btn;
{
    dY=-cursorMoveSpeed;
    currentStatus = currentStatus_up;
}

-(void)InitializeLogic
{
    float randomCursorX=self.view.center.x+arc4random()%cursorRectArea_AirRifle/2;
    float randomCursorY=self.view.center.y+arc4random()%cursorRectArea_AirRifle/2;

    iv_crusor.center=CGPointMake(randomCursorX, randomCursorY);
}

-(IBAction)clickBtnBack:(id)sender
{
    [timer_render invalidate];
    timer_render=nil;
    [timer_logic invalidate];
    timer_logic=nil;
	[self dismissModalViewControllerAnimated:YES];
}

int myRandom3() {
    return (arc4random() % 2 ? 1 : -1);
}


-(void)shake_crusor
{
    shakeDX=myRandom3();
    shakeDY=myRandom3();
 
}



@end

//
//  FGAirRifleGameViewController.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGAirRifleGameViewController.h"
#import "AppDelegate.h"
#import "FGGameResultViewController.h"
#import "FGGameSubmitViewController.h"
#import "FGMenuViewController.h"
#import "AppDelegate.h"
#define circleDistance_AirRifle 15
#define cursorRectArea_AirRifle 147

@implementation FGAirRifleGameViewController
@synthesize rounds;
@synthesize scores;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        cursorMoveSpeed=2
        ;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    PlayerName.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    RoundNum.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    showTarget.hidden = YES;
    showAim.hidden = YES;
    border.hidden = YES;
    [self InitializeLogic];
    NSLog(@"isTilt = %d",isTilt);
    if (isTilt == TRUE) {
        Joystick.hidden = YES;
        JoyStickBase.hidden = YES;
    }
    else {
        Joystick.hidden = NO;
        JoyStickBase.hidden = NO;
    }
    [UIAccelerometer sharedAccelerometer].delegate = self;
    [UIAccelerometer sharedAccelerometer].updateInterval = 0.01;
    // Do any additional setup after loading the view from its nib.
    timer_logic = [NSTimer scheduledTimerWithTimeInterval:.06 target:self selector:@selector(logicUpdate) userInfo:nil repeats:YES];
    timer_render = [NSTimer scheduledTimerWithTimeInterval:.06 target:self selector:@selector(renderUpdate) userInfo:nil repeats:YES];
    iv_bulletHole = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cursor2 2.png"]];
    iv_bulletHole.hidden = YES;
    //view_scoreBar.hidden = YES;
    [self.view addSubview:iv_bulletHole];
    [iv_bulletHole release];
    if ([Country isEqual:@"us"]) {
        Flag.image = [UIImage imageNamed:@"us@2x.png"];
    }
    if ([Country isEqual:@"serbia"]) {
        Flag.image = [UIImage imageNamed:@"serbia@2x.png"];
    }
    if ([Country isEqual:@"ukraine"]) {
        Flag.image = [UIImage imageNamed:@"ukraine@2x.png"];
    }
    if ([Country isEqual:@"russia"]) {
        Flag.image = [UIImage imageNamed:@"russia@2x.png"];
    }
    if ([Country isEqual:@"romania"]) {
        Flag.image = [UIImage imageNamed:@"romania@2x.png"];
    }
    if ([Country isEqual:@"poland"]) {
        Flag.image = [UIImage imageNamed:@"poland@2x.png"];
    }
    if ([Country isEqual:@"italy"]) {
        Flag.image = [UIImage imageNamed:@"italy@2x.png"];
    }
    if ([Country isEqual:@"india"]) {
        Flag.image = [UIImage imageNamed:@"india@2x.png"];
    }
    if ([Country isEqual:@"hungary"]) {
        Flag.image = [UIImage imageNamed:@"hungary@2x.png"];
    }
    if ([Country isEqual:@"germany"]) {
        Flag.image = [UIImage imageNamed:@"germany@2x.png"];
    }
    if ([Country isEqual:@"france"]) {
        Flag.image = [UIImage imageNamed:@"france@2x.png"];
    }
    if ([Country isEqual:@"finland"]) {
        Flag.image = [UIImage imageNamed:@"finland@2x.png"];
    }
    if ([Country isEqual:@"czech"]) {
        Flag.image = [UIImage imageNamed:@"czech@2x.png"];
    }
    if ([Country isEqual:@"china"]) {
        Flag.image = [UIImage imageNamed:@"china@2x.png"];
    }
    if ([Country isEqual:@"austria"]) {
        Flag.image = [UIImage imageNamed:@"austria@2x.png"];
    }
    
}


#pragma mark-status machine
-(void)logicUpdate
{
    //NSLog(@"logicUpdate");
    if (Paused==TRUE) {
        return;
    }
    else {
   // shakeDX=0;
   // shakeDY=0;
    
    if (timerCount%5==0) {
        [self shake_crusor];
    } 
    if (iv_crusor.center.x>self.view.center.x+147/2) {
        shakeDX=0;

           // dX=0;

    }
    if (iv_crusor.center.x<self.view.center.x-147/2) {
        shakeDX=0;

         //   dX=0;

    }
    if (iv_crusor.center.y>self.view.center.y+147/2) {
        shakeDY=0;

        //    dY=0;

    }
    if (iv_crusor.center.y<self.view.center.y-147/2) {
        shakeDY=0;

       //     dY=0;
    }
    if (scorecount == 0) {
        l_1.text = @"";
        l_2.text = @"";
        l_3.text = @"";
        l_4.text = @"";
        l_5.text = @"";
        l_6.text = @"";
        l_7.text = @"";
        l_8.text = @"";
        l_9.text = @"";
        l_10.text = @"";
    }
     
        if(dX<0)//left
        {
            if(iv_crusor.center.x + dX+shakeDX < movingArea.center.x-movingArea.frame.size.width/2)
                return;
        }
        if(dX>0)//right
        {
            if(iv_crusor.center.x + dX+shakeDX > movingArea.center.x+movingArea.frame.size.width/2)
                return;
        }
        if(dY<0)//up
        {
            if(iv_crusor.center.y + dY+shakeDY < movingArea.center.y-movingArea.frame.size.height/2)
                return;
        }
        if(dY>0)//down
        {
            if(iv_crusor.center.y + dY+shakeDY > movingArea.center.y+movingArea.frame.size.height/2)
                return;
        }
            iv_crusor.center=CGPointMake(iv_crusor.center.x + dX+shakeDX, iv_crusor.center.y + dY+shakeDY);
            timerCount=timerCount<200000?timerCount+1:0;
    }
    
    
}

-(void)renderUpdate
{
    
}

-(void)dealloc
{
    NSLog(@":::::>dealloc FGAirRifleGameViewController");
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

-(void)moveTargetUp
{
    view_scoreBar.hidden = NO;
    target.hidden=YES;
    iv_crusor.hidden=YES;
    iv_bulletHole.hidden=YES;
    btn_fire.hidden = YES;
    showAim.hidden = NO;
    showTarget.hidden = NO;
    border.hidden = NO;
    l_total.text = [NSString stringWithFormat:@"%.1f",totalscore]; 
    view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480+60);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(moveUpFinished)];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:2];
    view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480-60);
    [UIView commitAnimations];
}

-(void)moveUpFinished
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDelay:1];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDidStopSelector:@selector(moveDownFinished)];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480+60);
    [UIView commitAnimations];
}

-(void)moveDownFinished
{
    //
    target.hidden=NO;
    iv_crusor.hidden=NO;
    //view_scoreBar.hidden = YES;
    RoundBar.hidden=YES;
    standingMan.hidden=YES;
    shootingMan.hidden=NO;
    showTarget.hidden = YES;
    showAim.hidden = YES;
    border.hidden = YES;
    
}

-(void)roundChange
{
    target.hidden=YES;
    shootingMan.hidden=YES;
    iv_crusor.hidden=YES;
    standingMan.hidden=NO;
    RoundBar.hidden=NO;
    RoundNum.text = [NSString stringWithFormat:@"Round %i",roundcount];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
                      if (target.hidden == NO) {
    UITouch *touch = [[ event allTouches] anyObject];
    if (![[touch view] isEqual:JoyStickBase]) {
        if (![[touch view] isEqual:Joystick]){
    currentStatus = currentStatus_fire;
    if (Paused==FALSE) {
    iv_bulletHole.hidden = NO;
//    if(!view_scoreBar.hidden)
//        return;

    [self moveTargetUp];
    iv_bulletHole.center = iv_crusor.center;
    float xDist = (iv_crusor.center.x - self.view.center.x);
    float yDist = (iv_crusor.center.y - self.view.center.y);
    float distance = sqrt((xDist * xDist) + (yDist * yDist));
    float score = 11.0-11.0/151.0*distance;
    gamescore=totalscore = score + totalscore;
    showAim.center = CGPointMake((showTarget.center.x+xDist/1.3), (showTarget.center.y+yDist/1.3));
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
        if(rounds==1)
        {
            [(AppDelegate *)[UIApplication sharedApplication].delegate saveScoreToTop5Score:totalscore plistName:@"TopAirQuick"];
            [self gotoResultpage];
            scores=totalscore;
            NSLog(@"scores=%f",scores);
            NSLog(@"totalscore=%f",totalscore);
            
        }
        
        if(rounds==3 && roundcount<4)
        {
            //clear score thing
            roundcount++;
            [self roundChange];
            scorecount = 0;
            gamescore=scores=totalscore;
        }
        if (roundcount>3) {
        [(AppDelegate *)[UIApplication sharedApplication].delegate saveScoreToTop5Score:totalscore plistName:@"TopAirTournament"];
        [self gotoResultpage];
        gamescore=scores=totalscore;
    }
    }
    float randomCursorX=self.view.center.x+arc4random()%cursorRectArea_AirRifle/2;
    float randomCursorY=self.view.center.y+arc4random()%cursorRectArea_AirRifle/2;
    iv_crusor.center=CGPointMake(randomCursorX, randomCursorY);
    
    }
    }
    }
    }
}
-(void)gotoResultpage
{
    FGGameResultViewController *vc_gameresult = [[FGGameResultViewController alloc] initWithNibName:@"FGGameResultViewController" bundle:nil];
    [self presentModalViewController:vc_gameresult animated:YES];
    [vc_gameresult release];
}

-(void)InitializeLogic
{
    float randomCursorX=self.view.center.x+arc4random()%cursorRectArea_AirRifle/2;
    float randomCursorY=self.view.center.y+arc4random()%cursorRectArea_AirRifle/2;
    roundcount = 1;
    [self roundChange];
    [UIView setAnimationDelay:1];
    [self moveUpFinished];
    iv_crusor.center=CGPointMake(randomCursorX, randomCursorY);
    PlayerName.text=Name;
view_scoreBar.center = CGPointMake(view_scoreBar.center.x, 480+60);
}

-(IBAction)clickBtnBack:(id)sender
{
    [timer_render invalidate];
    timer_render=nil;
    [timer_logic invalidate];
    timer_logic=nil;
	[self dismissModalViewControllerAnimated:YES];
}

int myRandom() {
    return (arc4random() % 2 ? 1 : -1);
}


-(void)shake_crusor
{
    
    shakeDX=myRandom()*1.5;
    shakeDY=myRandom()*1.5;
//    NSLog(@"shakeDX=%f,shakeDy=%f",shakeDX,shakeDY);
}

-(IBAction)pause:(id)sender

{
    Paused=TRUE;
    Play.hidden=NO;
}
-(IBAction)unpause:(id)sender
{
    Paused=FALSE;
    Play.hidden=YES;
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
     UITouch *touch = [[ event allTouches] anyObject];
    CGPoint location = [touch locationInView:self.view];
    if (CGRectContainsPoint(JoyStickBase.frame,location)) {
   
    
    Joystick.alpha = 0.7;
    
    if([[touch view] isEqual:Joystick]){
        Joystick.center = CGPointMake(location.x, location.y);
        NSLog(@"Joystick.center=%@",NSStringFromCGPoint(Joystick.center));
    }
    else {
//        dX=0.0;
//        dY=0.0;
        currentStatus = currentStatus_unknow;
    }
    NSLog(@":::::>touchesMoved");
        if (Joystick.center.x<JoyStickBase.center.x) {
            if (iv_crusor.center.x>movingArea.center.x-movingArea.frame.size.width/2) {
               // currentStatus = currentStatus_left;
            dX=-cursorMoveSpeed;
            
            }
            else {
                dX=0;
//                currentStatus = currentStatus_left;
            }
        }
        if (Joystick.center.x>JoyStickBase.center.x)
        {
            if (iv_crusor.center.x<movingArea.center.x+movingArea.frame.size.width/2) {

            dX=cursorMoveSpeed;
//            currentStatus = currentStatus_right;
            }
            else {
                dX=0;
//                currentStatus = currentStatus_right;
            }
        }
        if (Joystick.center.y>JoyStickBase.center.y)//down
        {
            if (iv_crusor.center.y<movingArea.center.y+movingArea.frame.size.height/2)
            {
            dY=cursorMoveSpeed;
//            currentStatus = currentStatus_down;
            }
            else {
                dY=0;
//                currentStatus = currentStatus_down;
            }
        }

        if (Joystick.center.y<JoyStickBase.center.y)//up
        {
            if (iv_crusor.center.y>movingArea.center.y-movingArea.frame.size.height/2) {
            dY=-cursorMoveSpeed;
//            currentStatus = currentStatus_up;
            }
            else {
                dY=0;
//                currentStatus = currentStatus_up;
            }
        }
    }
    else {
        Joystick.center =  CGPointMake(JoyStickBase.center.x, JoyStickBase.center.y);
    }
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    currentStatus = currentStatus_unknow;
    Joystick.center =  CGPointMake(JoyStickBase.center.x, JoyStickBase.center.y);
    dX=0;
    dY=0;
    
}

-(IBAction)buttonAction_go2Menu:(UIButton *)sender
{
    
    FGMenuViewController *vc_game = [[FGMenuViewController alloc] initWithNibName:@"FGMenuViewController" bundle:nil];
    [self presentModalViewController:vc_game animated:YES];
    [vc_game release];
    
}

-(void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    //NSLog(@"(x,y,z)=(%f,%f,%f)",acceleration.x,acceleration.y,acceleration.z);
    //iv_crusor.center = CGPointMake(iv_crusor.center.x+acceleration.x*3, iv_crusor.center.y-acceleration.y*3);
    if (isTilt == TRUE) {
        if (Paused == TRUE) {
            return;
        }
        else {
    if (iv_crusor.center.x < movingArea.center.x+movingArea.frame.size.width/2) {
        iv_crusor.center = CGPointMake(iv_crusor.center.x+acceleration.x*3, iv_crusor.center.y);
    }
    else {
        iv_crusor.center = CGPointMake(iv_crusor.center.x-1, iv_crusor.center.y); 
    }//limit the right side
        
    if (iv_crusor.center.x > movingArea.center.x-movingArea.frame.size.width/2) {
        iv_crusor.center = CGPointMake(iv_crusor.center.x+acceleration.x*3, iv_crusor.center.y);
    }
    else {
        iv_crusor.center = CGPointMake(iv_crusor.center.x+1, iv_crusor.center.y); 
    }//left
        if (iv_crusor.center.y < movingArea.center.y+movingArea.frame.size.height/2) {
            iv_crusor.center = CGPointMake(iv_crusor.center.x, iv_crusor.center.y-acceleration.y*3);
        }
        else {
            iv_crusor.center = CGPointMake(iv_crusor.center.x, iv_crusor.center.y-1); 
        }//limit the right side
        
        if (iv_crusor.center.y > movingArea.center.y-movingArea.frame.size.height/2) {
            iv_crusor.center = CGPointMake(iv_crusor.center.x, iv_crusor.center.y-acceleration.y*3);
        }
        else {
            iv_crusor.center = CGPointMake(iv_crusor.center.x, iv_crusor.center.y+1); 
        }//left
        
    }
    }
}


@end

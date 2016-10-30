//
//  FGRapidFireGameViewController.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGRapidFireGameViewController.h"
#import "AppDelegate.h"
#import "FGGameResultViewController.h"
#import "FGMenuViewController.h"
#define circleDistance_AirRifle 15
#define cursorRectArea_AirRifle 147

@interface FGRapidFireGameViewController ()

@end

@implementation FGRapidFireGameViewController
@synthesize rounds;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        cursorMoveSpeed=2.0;
        // Custom initialization
        arr_bulletPool = [[NSMutableArray alloc] initWithCapacity:20];//bullet pool
        arr_targetPool = [[NSMutableArray alloc] initWithCapacity:10];//target pool
        
        targetStatus[0]=0;
        targetStatus[1]=0;
        targetStatus[2]=0;
        targetStatus[3]=0;
        targetStatus[4]=0;
        targetStatus[5]=0;
        targetStatus[6]=0;
        targetStatus[7]=0;
        targetStatus[8]=0;
        targetStatus[9]=0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self InitializeLogic];
    PlayerName.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    RoundNum.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    [UIAccelerometer sharedAccelerometer].delegate = self;
    [UIAccelerometer sharedAccelerometer].updateInterval = 0.01;
    timer_targetMove = [NSTimer scheduledTimerWithTimeInterval:.03 target:self selector:@selector(timerUpdate) userInfo:nil repeats:YES];
    timer_logic = [NSTimer scheduledTimerWithTimeInterval:.06 target:self selector:@selector(logicUpdate) userInfo:nil repeats:YES];
    if (isTilt == TRUE) {
        JoyStickBase.hidden = YES;
        Joystick.hidden = YES;
    }
    
     maxBullet = 20;
    for(int i=0;i<maxBullet;i++)
    {
        
         UIImageView *bulletHole = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"showtarget_spot 2.png"]];
        bulletHole.hidden = YES;
        [arr_bulletPool addObject:bulletHole];
        [self.view addSubview:bulletHole];
        [self.view insertSubview:bulletHole belowSubview:l_score];
        [bulletHole release];
    }
    
 
        [arr_targetPool addObject:Target];
        [arr_targetPool addObject:Target2];
        [arr_targetPool addObject:Target3];
        [arr_targetPool addObject:Target4];
        [arr_targetPool addObject:Target5];
        [arr_targetPool addObject:Target6];
        [arr_targetPool addObject:Targe7];
        [arr_targetPool addObject:Target8];
        [arr_targetPool addObject:Target9];
        [arr_targetPool addObject:Target10];
    
//    float floatValue = 0.0f;
//    int intValue=0;
//    lb.text = [NSString stringWithFormat:@"%f",floatValue];
//    lb.text = [NSString stringWithFormat:@"%d",intValue];
    // Do any additional setup after loading the view from its nib.
    
}

-(BOOL)isBulletColllsionToTarget:(UIImageView *)_iv_bullet
{
    BOOL retVal = NO;
    int count=0;
    for(UIImageView *iv_target in arr_targetPool)
    {
            if(CGRectContainsPoint(iv_target.frame, _iv_bullet.center)&&targetStatus[count]==0)
            {
                retVal = YES;
                targetStatus[count]=1;
                
                break;
            }
        count++;
    }
    
    
    
    return retVal;
}

-(UIImageView *)getFreeBullet
{
    for(int i=0;i<maxBullet;i++ )
    {
        UIImageView *iv_tmpBullet = [arr_bulletPool objectAtIndex:i];
        if(iv_tmpBullet.hidden)
        {
            
            return iv_tmpBullet;
        }
    }
    assert(@"you need add your bullet pool");
    return nil;
}

-(void)makeFreeBullet
{
    for(int i=0;i<maxBullet;i++)
    {
        UIImageView *iv_tmpBullet = [arr_bulletPool objectAtIndex:i];
        if(iv_tmpBullet.center.x > 320 || iv_tmpBullet.center.x<0)
        {
            iv_tmpBullet.hidden = YES;
        }
        
        if(!iv_tmpBullet.hidden)//on target(not free,used)
        {
            if (Paused==TRUE) {
                return;
            }
            else {
            iv_tmpBullet.center=CGPointMake(iv_tmpBullet.center.x+2, iv_tmpBullet.center.y);
            }
        }
    }
}



-(void)timerUpdate
{
    if (Paused==TRUE) {
        return;
    }
    else {
    l_score.center=CGPointMake(l_score.center.x+1, l_score.center.y);
    Target.center=CGPointMake(Target.center.x+1, Target.center.y);
    Targe7.center=CGPointMake(Targe7.center.x+1, Targe7.center.y);
    Target2.center=CGPointMake(Target2.center.x+1, Target2.center.y);
    Target3.center=CGPointMake(Target3.center.x+1, Target3.center.y);
    Target4.center=CGPointMake(Target4.center.x+1, Target4.center.y);
    Target5.center=CGPointMake(Target5.center.x+1, Target5.center.y);
    Target6.center=CGPointMake(Target6.center.x+1, Target6.center.y);
    Target8.center=CGPointMake(Target8.center.x+1, Target8.center.y);
    Target9.center=CGPointMake(Target9.center.x+1, Target9.center.y);
    Target10.center=CGPointMake(Target10.center.x+1, Target10.center.y);
//    targetStatus[0]=0;
//    targetStatus[1]=0;
//    targetStatus[2]=0;
//    targetStatus[3]=0;
//    targetStatus[4]=0;
//    targetStatus[5]=0;
//    targetStatus[6]=0;
//    targetStatus[7]=0;
//    targetStatus[8]=0;
//    targetStatus[9]=0;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)logicUpdate
{
//    NSLog(@"logicUpdate");
    [self makeFreeBullet];
//    shakeDX=0;
//    shakeDY=0;
    if (Paused==TRUE) {
        return;
    }
    else {
    if (timerCount%5==0) {
        [self shake_crusor];
    } 
    if (Crusor.center.x>self.view.center.x+147/2) {
        shakeDX=0;
        if (currentStatus==currentStatus_right1) {
            dX=0;
        }
    }
    if (Crusor.center.x<self.view.center.x-147/2) {
        shakeDX=0;
        if (currentStatus==currentStatus_left1) {
            dX=0;
        }
    }
    if (Crusor.center.y>self.view.center.y+147/2) {
        shakeDY=0;
        if (currentStatus==currentStatus_down1) {
            dY=0;
        }
    }
    if (Crusor.center.y<self.view.center.y-147/2) {
        shakeDY=0;
        if (currentStatus==currentStatus_up1) {
            dY=0;
        }
    }
    Crusor.center=CGPointMake(Crusor.center.x + dX+shakeDX, Crusor.center.y + dY+shakeDY);
    timerCount=timerCount<200000?timerCount+1:0;
    }
}

-(void)dealloc
{
    NSLog(@":::::>dealloc FGAirRifleGameViewController");
    [arr_bulletPool release];
    arr_bulletPool = nil;
    [arr_targetPool release];
    arr_targetPool = nil;
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction) buttonAction_left:(UIButton*)_btn;
{
    dX=0.0;
    currentStatus = currentStatus_unknow1;
}
-(IBAction) buttonAction_right:(UIButton*)_btn;
{
    dX=0.0;
    currentStatus = currentStatus_unknow1;
}
-(IBAction) buttonAction_down:(UIButton*)_btn;
{
    dY=0.0;
    currentStatus = currentStatus_unknow1;
}
-(IBAction) buttonAction_up:(UIButton*)_btn;
{
    dY=0.0;
    currentStatus = currentStatus_unknow1;
}
-(void)moveTargetUp
{
    scoreBar.hidden = NO;
    scoreBar.center = CGPointMake(scoreBar.center.x, 480+76/2);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(moveUpFinished)];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:2];
    scoreBar.center = CGPointMake(scoreBar.center.x, 480-76/2);
    [UIView commitAnimations];
    l_totalscore.text = [NSString stringWithFormat:@"%.1f",totalscore];

}

-(void)moveUpFinished
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDelay:2];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDidStopSelector:@selector(moveDownFinished)];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    scoreBar.center = CGPointMake(scoreBar.center.x, 480+76/2);
    [UIView commitAnimations];
    roundBar.hidden=NO;
    Target.hidden=YES;
    RoundNum.text=[NSString stringWithFormat:@"Round %d",roundcount];
    
}

-(void)moveDownFinished
{
    roundBar.hidden=YES;
    Target.hidden=NO;
    [self gameStart];
    if (roundcount == rounds && scorecount >= 10) {
        FGGameResultViewController *vc_game = [[FGGameResultViewController alloc] initWithNibName:@"FGGameResultViewController" bundle:nil];
        [self presentModalViewController:vc_game animated:YES];
        [vc_game release];
    }
}
-(void)gameStart
{
    Target.center=CGPointMake(op_1, Target.center.y);
    Target2.center=CGPointMake(op_2, Target.center.y);
    Target3.center=CGPointMake(op_3, Target.center.y);
    Target4.center=CGPointMake(op_4, Target.center.y);
    Target5.center=CGPointMake(op_5, Target.center.y);
    Target6.center=CGPointMake(op_6, Target.center.y);
    Targe7.center=CGPointMake(op_7, Target.center.y);
    Target8.center=CGPointMake(op_8, Target.center.y);
    Target9.center=CGPointMake(op_9, Target.center.y);
    Target10.center=CGPointMake(op_10, Target.center.y);
}

-(IBAction) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
        UITouch *touch = [[ event allTouches] anyObject];
        if (![[touch view] isEqual:JoyStickBase]) {
            if (![[touch view] isEqual:Joystick]){
    if (Paused==TRUE) {
        return;
    }
    else {
        
    UIImageView *iv_bullet = [self getFreeBullet];
    iv_bullet.center = Crusor.center;
    if([self isBulletColllsionToTarget:iv_bullet])
    {
        scorecount = scorecount + 1;
        
        
    //NSLog(@"targetframe=%@  iv_bullet.center=%@",NSStringFromCGRect(Target.frame), NSStringFromCGPoint(iv_bullet.center));
        iv_bullet.hidden = NO;
        if (CGRectContainsPoint(Target.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target.center.x);
            float yDist = (iv_bullet.center.y - Target.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target2.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target2.center.x);
            float yDist = (iv_bullet.center.y - Target2.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target3.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target3.center.x);
            float yDist = (iv_bullet.center.y - Target3.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target4.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target4.center.x);
            float yDist = (iv_bullet.center.y - Target4.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target5.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target5.center.x);
            float yDist = (iv_bullet.center.y - Target5.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target6.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target6.center.x);
            float yDist = (iv_bullet.center.y - Target6.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Targe7.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Targe7.center.x);
            float yDist = (iv_bullet.center.y - Targe7.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target8.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target8.center.x);
            float yDist = (iv_bullet.center.y - Target8.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target9.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target9.center.x);
            float yDist = (iv_bullet.center.y - Target9.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
             score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        if (CGRectContainsPoint(Target10.frame, iv_bullet.center)) {
            float xDist = (iv_bullet.center.x - Target10.center.x);
            float yDist = (iv_bullet.center.y - Target10.center.y);
            float distance = sqrt((xDist * xDist) + (yDist * yDist));
            score = 11.0-11.0/151.0*distance;
            l_score.text = [NSString stringWithFormat:@"%.1f",score];
            NSLog(@"%f",score);
            l_score.hidden = NO;
            l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
        }
        
        totalscore = score+totalscore;
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
        if (scorecount >= 10) {
            l_10.text = [NSString stringWithFormat:@"%.1f",score];
            [self moveTargetUp];
            if (rounds==1) {
                [(AppDelegate *)[UIApplication sharedApplication].delegate saveScoreToTop5Score:totalscore plistName:@"TopRapidQuick"];
                            gamescore=totalscore;
            }
            if (rounds==3 && roundcount<4) {
                roundcount++;
                iv_bullet.hidden=YES;
                l_score.hidden=YES;
                scorecount = 0;
                if (roundcount>3) {
                    [(AppDelegate *)[UIApplication sharedApplication].delegate saveScoreToTop5Score:totalscore plistName:@"TopRapidTournament"];
                                gamescore=totalscore;
                }
                
            }

        }
        l_score.center = CGPointMake(Crusor.center.x + 20, Crusor.center.y - 10);
    }
    }
    }
    else
    {
        NSLog(@"oh, not on target yet aim again!!!");
    }
    }
}
-(IBAction) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[ event allTouches] anyObject];
    CGPoint location = [touch locationInView:self.view];
    if (CGRectContainsPoint(JoyStickBase.frame,location)) {
        Joystick.center = CGPointMake(location.x, location.y);
    }
    if (Joystick.center.x<JoyStickBase.center.x) 
    {
    dX=-cursorMoveSpeed;
    currentStatus = currentStatus_left1;
    shakeDX=0;
    }
    if (Joystick.center.x>JoyStickBase.center.x) 
    {
        dX=cursorMoveSpeed;
        currentStatus = currentStatus_right1;
        shakeDX=0;
    }
    if (Joystick.center.y>JoyStickBase.center.y) 
    {
        dY=cursorMoveSpeed;
        currentStatus = currentStatus_down1;
        shakeDY=0;
    }
    if (Joystick.center.y<JoyStickBase.center.y) 
    {
        dY=-cursorMoveSpeed;
        currentStatus = currentStatus_up1;
        shakeDY=0;
    }
}
-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    Joystick.center = CGPointMake(JoyStickBase.center.x, JoyStickBase.center.y);
    currentStatus = currentStatus_unknow1;
    dX=0;
    dY=0;
}
-(IBAction) buttonAction_right_pressDown:(UIButton*)_btn;
{

}
-(IBAction) buttonAction_down_pressDown:(UIButton*)_btn;
{

}
-(IBAction) buttonAction_up_pressDown:(UIButton*)_btn;
{

}

-(void)InitializeLogic
{
    float randomCursorX=self.view.center.x+arc4random()%cursorRectArea_AirRifle/2;
    float randomCursorY=self.view.center.y+arc4random()%cursorRectArea_AirRifle/2;
    op_1 = Target.center.x;
    op_2 = Target2.center.x;
    op_3 = Target3.center.x;
    op_4 = Target4.center.x;
    op_5 = Target5.center.x;
    op_6 = Target6.center.x;
    op_7 = Targe7.center.x;
    op_8 = Target8.center.x;
    op_9 = Target9.center.x;
    op_10 = Target10.center.x;
    roundcount = 1;
    [self moveUpFinished];
    PlayerName.text=Name;
    if (Country==@"us") {
        Flag.image = [UIImage imageNamed:@"us 2.png"];
    }
    if (Country==@"ukraine") {
        Flag.image = [UIImage imageNamed:@"ukraine 2.png"];
    }
    if (Country==@"russia") {
        Flag.image = [UIImage imageNamed:@"russia 2.png"];
    }
    if (Country==@"romania") {
        Flag.image = [UIImage imageNamed:@"romania 2.png"];
    }
    if (Country==@"poland") {
        Flag.image = [UIImage imageNamed:@"poland 2.png"];
    }
    if (Country==@"italy") {
        Flag.image = [UIImage imageNamed:@"italy 2.png"];
    }
    if (Country==@"india") {
        Flag.image = [UIImage imageNamed:@"india 2.png"];
    }
    if (Country==@"hungary") {
        Flag.image = [UIImage imageNamed:@"hungary 2.png"];
    }
    if (Country==@"germany") {
        Flag.image = [UIImage imageNamed:@"germany 2.png"];
    }
    if (Country==@"france") {
        Flag.image = [UIImage imageNamed:@"france 2.png"];
    }
    if (Country==@"finland") {
        Flag.image = [UIImage imageNamed:@"finland 2.png"];
    }
    if (Country==@"czech") {
        Flag.image = [UIImage imageNamed:@"czech 2.png"];
    }
    if (Country==@"china") {
        Flag.image = [UIImage imageNamed:@"china 2.png"];
    }
    if (Country==@"austria") {
        Flag.image = [UIImage imageNamed:@"austria 2.png"];
    }
    
    Crusor.center=CGPointMake(randomCursorX, randomCursorY);
}

int myRandom1() {
    return (arc4random() % 2 ? 1 : -1);
}


-(void)shake_crusor
{
    shakeDX=myRandom1()*1.5;
    shakeDY=myRandom1()*1.5;
    
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

-(IBAction)buttonAction_go2Menu:(UIButton *)_sender
{
    
    FGMenuViewController *vc_menu = [[FGMenuViewController alloc] initWithNibName:@"FGMenuViewController" bundle:nil];
    [self presentModalViewController:vc_menu animated:YES];
    [vc_menu release];
    
}

-(void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    //NSLog(@"(x,y,z)=(%f,%f,%f)",acceleration.x,acceleration.y,acceleration.z);
    //Crusor.center = CGPointMake(Crusor.center.x+acceleration.x*3, Crusor.center.y-acceleration.y*3);
    if (isTilt == TRUE) {
        if (Paused == TRUE) {
            return;
        }
        else {
            if (Crusor.center.x < movingArea.center.x+movingArea.frame.size.width/2) {
                Crusor.center = CGPointMake(Crusor.center.x+acceleration.x*3, Crusor.center.y);
            }
            else {
                Crusor.center = CGPointMake(Crusor.center.x-1, Crusor.center.y); 
            }//limit the right side
            
            if (Crusor.center.x > movingArea.center.x-movingArea.frame.size.width/2) {
                Crusor.center = CGPointMake(Crusor.center.x+acceleration.x*3, Crusor.center.y);
            }
            else {
                Crusor.center = CGPointMake(Crusor.center.x+1, Crusor.center.y); 
            }//left
            if (Crusor.center.y < movingArea.center.y+movingArea.frame.size.height/2) {
                Crusor.center = CGPointMake(Crusor.center.x, Crusor.center.y-acceleration.y*3);
            }
            else {
                Crusor.center = CGPointMake(Crusor.center.x, Crusor.center.y-1); 
            }//limit the right side
            
            if (Crusor.center.y > movingArea.center.y-movingArea.frame.size.height/2) {
                Crusor.center = CGPointMake(Crusor.center.x, Crusor.center.y-acceleration.y*3);
            }
            else {
                Crusor.center = CGPointMake(Crusor.center.x, Crusor.center.y+1); 
            }//left
            
        }
    }
}

@end

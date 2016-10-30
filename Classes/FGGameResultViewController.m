//
//  FGGameResultViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import "FGGameResultViewController.h"
#import "FGAirRifleGameViewController.h"
#import "FGGameSubmitViewController.h"
#import "AppDelegate.h"
#import "FGAirRifleGameViewController.h"
#import "FGAirRifleGameViewController.h"
@interface FGGameResultViewController ()

@end

@implementation FGGameResultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        arr__names= [[NSMutableArray alloc] initWithCapacity:10];
        [arr__names addObject:@"Abhinav Bindra"];
        [arr__names addObject:@"Qinan Zhu"];
        [arr__names addObject:@"Henri Hakkinen"];
        [arr__names addObject:@"Stevan Pletikosic"];
        [arr__names addObject:@"Sergey Kruglov"];
        [arr__names addObject:@"A.G.Moldoveanu"];
        [arr__names addObject:@"K.Prikhodchenko"];
        [arr__names addObject:@"Peter Sidi"];
        [arr__names addObject:[NSString stringWithFormat:@"%@",Name]];
        
        arr__scores= [[NSMutableArray alloc] initWithCapacity:10];
        if (globalRounds == 1) {
        [arr__scores addObject:@"101.2"];
        [arr__scores addObject:@"100.1"];
        [arr__scores addObject:@"94.2"];
        [arr__scores addObject:@"93.2"];
        [arr__scores addObject:@"92.4"];
        [arr__scores addObject:@"91.5"];
        [arr__scores addObject:@"91.2"];
        [arr__scores addObject:@"91.1"];
        [arr__scores addObject:[NSString stringWithFormat:@"%f",gamescore]];
        }
        if (globalRounds ==3) {
            [arr__scores addObject:@"303.6"];
            [arr__scores addObject:@"300.1"];
            [arr__scores addObject:@"282.5"];
            [arr__scores addObject:@"279.9"];
            [arr__scores addObject:@"276.1"];
            [arr__scores addObject:@"273.6"];
            [arr__scores addObject:@"273.4"];
            [arr__scores addObject:@"273.1"];
            [arr__scores addObject:[NSString stringWithFormat:@"%f",gamescore]];
        }
        
        arr__Country= [[NSMutableArray alloc] initWithCapacity:10];
        [arr__Country addObject:@"india@2x.png"];
        [arr__Country addObject:@"china@2x.png"];
        [arr__Country addObject:@"finland@2x.png"];
        [arr__Country addObject:@"serbia@2x.png"];
        [arr__Country addObject:@"russia@2x.png"];
        [arr__Country addObject:@"romania@2x.png"];
        [arr__Country addObject:@"russia@2x.png"];
        [arr__Country addObject:@"hungary@2x.png"];
        [arr__Country addObject:@"romania@2x.png"];
    
        
        //sort arr__scores
        arr__scores = [[(AppDelegate *)[UIApplication sharedApplication].delegate sortScore:arr__scores currentScore:0] copy];
        
        int index=0;
        int myIndex=0;
        for(NSString *str_scores in arr__scores)
        {
            if([str_scores floatValue]==gamescore)
            {
                myIndex = index;
                break;
            }
            index++;
        }
        if(myIndex!=8)
        {
            [arr__names replaceObjectAtIndex:8 withObject:[arr__names objectAtIndex:myIndex]];
            [arr__names replaceObjectAtIndex:myIndex withObject:[NSString stringWithFormat:@"%@",Name]];
            [arr__Country replaceObjectAtIndex:8 withObject:[arr__Country objectAtIndex:myIndex]];
            if([Country isEqualToString:@"us"]){
            [arr__Country replaceObjectAtIndex:myIndex withObject:@"us@2x.png"];
            }
            if([Country isEqualToString:@"ukraine"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"ukraine@2x.png"];
            }
            if([Country isEqualToString:@"russia"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"russia@2x.png"];
            }
            if([Country isEqualToString:@"austria"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"austria@2x.png"];
            }
            if([Country isEqualToString:@"china"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"china@2x.png"];
            }
            if([Country isEqualToString:@"czech"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"czech@2x.png"];
            }
            if([Country isEqualToString:@"finland"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"finland@2x.png"];
            }
            if([Country isEqualToString:@"france"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"france@2x.png"];
            }
            if([Country isEqualToString:@"germany"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"germany@2x.png"];
            }
            if([Country isEqualToString:@"hungary"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"hungary@2x.png"];
            }
            if([Country isEqualToString:@"india"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"india@2x.png"];
            }
            if([Country isEqualToString:@"italy"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"italy@2x.png"];
            }
            if([Country isEqualToString:@"poland"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"poland@2x.png"];
            }
            if([Country isEqualToString:@"romania"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"romania@2x.png"];
            }
            if([Country isEqualToString:@"serbia"]){
                [arr__Country replaceObjectAtIndex:myIndex withObject:@"serbia@2x.png"];
            }



        }
NSLog(@"arr__names=%@",arr__names);
  NSLog(@"arr__scores=%@",arr__scores); 
       
         
            
        
        

//write a lot of key-value bind set the value to name lable and score lable
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    l_score9 .text = [NSString stringWithFormat:@"%.1f",gamescore];
    l_name9.text = Name;
    if (Country==@"us") {
        iv_country9.image = [UIImage imageNamed:@"us@2x.png"];
    }
    if (Country==@"ukraine") {
        iv_country9.image = [UIImage imageNamed:@"ukraine@2x.png"];
    }
    if (Country==@"russia") {
        iv_country9.image = [UIImage imageNamed:@"russia@2x.png"];
    }
    if (Country==@"romania") {
        iv_country9.image = [UIImage imageNamed:@"romania@2x.png"];
    }
    if (Country==@"poland") {
        iv_country9.image = [UIImage imageNamed:@"poland@2x.png"];
    }
    if (Country==@"italy") {
        iv_country9.image = [UIImage imageNamed:@"italy@2x.png"];
    }
    if (Country==@"india") {
        iv_country9.image = [UIImage imageNamed:@"india@2x.png"];
    }
    if (Country==@"hungary") {
        iv_country9.image = [UIImage imageNamed:@"hungary@2x.png"];
    }
    if (Country==@"germany") {
        iv_country9.image = [UIImage imageNamed:@"germany@2x.png"];
    }
    if (Country==@"france") {
        iv_country9.image = [UIImage imageNamed:@"france@2x.png"];
    }
    if (Country==@"finland") {
        iv_country9.image = [UIImage imageNamed:@"finland@2x.png"];
    }
    if (Country==@"czech") {
        iv_country9.image = [UIImage imageNamed:@"czech@2x.png"];
    }
    if (Country==@"china") {
        iv_country9.image = [UIImage imageNamed:@"china@2x.png"];
    }
    if (Country==@"austria") {
        iv_country9.image = [UIImage imageNamed:@"austria@2x.png"];
    }

    NSLog(@"1.l_name1.text=%@",l_name1.text);
    l_name1.text = [arr__names objectAtIndex:0];
    NSLog(@"2.l_name1.text=%@",l_name1.text);
    l_name2.text = [arr__names objectAtIndex:1];
    l_name3.text = [arr__names objectAtIndex:2];
    l_name4.text = [arr__names objectAtIndex:3];
    l_name5.text = [arr__names objectAtIndex:4];
    l_name6.text = [arr__names objectAtIndex:5];
    l_name7.text = [arr__names objectAtIndex:6];
    l_name8.text = [arr__names objectAtIndex:7];
    l_name9.text = [arr__names objectAtIndex:8];
    NSLog(@"1.l_score1=%@",l_score1);
    NSLog(@"1.l_score1.text=%@",l_score1.text);
    l_score1.text = [arr__scores objectAtIndex:0];
    NSLog(@"2.l_score1.text=%@",l_score1.text);
    NSLog(@"[arr__scores objectAtIndex:0]=%@",[arr__scores objectAtIndex:0]);
    //        NSLog(@"type:%@",[[arr__scores objectAtIndex:0] classNameForClass:[[arr__scores objectAtIndex:0] class]]);
    l_score2.text = [arr__scores objectAtIndex:1];
    l_score3.text = [arr__scores objectAtIndex:2];
    l_score4.text = [arr__scores objectAtIndex:3];
    l_score5.text = [arr__scores objectAtIndex:4];
    l_score6.text = [arr__scores objectAtIndex:5];
    l_score7.text = [arr__scores objectAtIndex:6];
    l_score8.text = [arr__scores objectAtIndex:7];
    l_score9.text = [arr__scores objectAtIndex:8];
    NSLog(@"before: testArray:%@",arr__scores);
    
    iv_country1.image = [UIImage imageNamed:[arr__Country objectAtIndex:0]];
    iv_country2.image = [UIImage imageNamed:[arr__Country objectAtIndex:1]];
    iv_country3.image = [UIImage imageNamed:[arr__Country objectAtIndex:2]];
    iv_country4.image = [UIImage imageNamed:[arr__Country objectAtIndex:3]];
    iv_country5.image = [UIImage imageNamed:[arr__Country objectAtIndex:4]];
    iv_country6.image = [UIImage imageNamed:[arr__Country objectAtIndex:5]];
    iv_country7.image = [UIImage imageNamed:[arr__Country objectAtIndex:6]];
    iv_country8.image = [UIImage imageNamed:[arr__Country objectAtIndex:7]];
    iv_country9.image = [UIImage imageNamed:[arr__Country objectAtIndex:8]];
    
    

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction)buttonAction_go2submit:(UIButton *)_sender
{
    
    FGGameSubmitViewController *vc_submit = [[FGGameSubmitViewController alloc] initWithNibName:@"FGGameSubmitViewController" bundle:nil];
    [self presentModalViewController:vc_submit animated:YES];
    [vc_submit release];
    
}


@end

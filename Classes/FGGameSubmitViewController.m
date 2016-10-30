//
//  FGGameSubmitViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/3/12.
//
//

#import "FGGameSubmitViewController.h"
#import "FGMenuViewController.h"
#import "FGAirRifleGameViewController.h"
#import "AppDelegate.h"
#import "FGStartModeViewController.h"
@interface FGGameSubmitViewController ()

@end

@implementation FGGameSubmitViewController
@synthesize submitscore;
FGAirRifleGameViewController *scoresubmission = nil;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    tf_name.delegate = self;
    tf_email.delegate = self;
    
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
    
-(IBAction)buttonAction_submit:(id)_sender;
{
    NSString *str_url=[NSString stringWithFormat:@"http://www.fugumobile.mobi/starcouple/sub.aspx?name=%@&email=%@&d=%f&rate=0&game=deadeye&from=ios&lite=0",tf_name.text,tf_email.text,gamescore];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:str_url]];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    NSLog(@"gamescore=%f",gamescore);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    return YES;
}
-(IBAction)gotomenu:(id)_sender;
{
    FGStartModeViewController *vc_quick = [[FGStartModeViewController alloc] initWithNibName:@"FGStartModeViewController" bundle:nil];
    [self presentModalViewController:vc_quick animated:YES];
    [vc_quick release];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
{
    NSLog(@"didFail");
}



- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
{
    NSString *str_response = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"str_response=%@",str_response);
   
}

-(IBAction)cancel:(id)_sender;
{
    FGStartModeViewController *vc_quick = [[FGStartModeViewController alloc] initWithNibName:@"FGStartModeViewController" bundle:nil];
    [self presentModalViewController:vc_quick animated:YES];
    [vc_quick release];
}
@end

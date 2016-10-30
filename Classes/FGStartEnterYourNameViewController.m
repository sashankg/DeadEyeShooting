//
//  FGStartEnterYourNameViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/3/12.
//
//

#import "FGStartEnterYourNameViewController.h"
#import "FGAirRifleGameViewController.h"
#import "FGRapidFireGameViewController.h"
#import "AppDelegate.h"
@interface FGStartEnterYourNameViewController ()

@end

@implementation FGStartEnterYourNameViewController
@synthesize status;
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
    highlight.hidden = YES;
    tf_20letter.delegate = self;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"file.txt"];
    NSString *str = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    Name = str;
    tf_20letter.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    tf_20letter.text = Name;
    NSArray *pathsc = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectoryc = [pathsc objectAtIndex:0];
    NSString *filePathc = [documentsDirectoryc stringByAppendingPathComponent:@"filec.txt"];
    NSString *strc = [NSString stringWithContentsOfFile:filePathc encoding:NSUTF8StringEncoding error:NULL];
    Country = strc;
    if ([Country isEqual:@""]) {
        highlight.hidden = YES;
    }
    else {
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"us"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_us.imageView.image;
        lb_selectedCountryName.text = lb_us.text;
        Country=@"us";
        highlight.center = CGPointMake(btn_us.center.x,btn_us.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"ukraine"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_ukraine.imageView.image;
        lb_selectedCountryName.text = lb_ukraine.text;
        Country=@"ukraine";
        highlight.center = CGPointMake(btn_ukraine.center.x,btn_ukraine.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"serbia"])
    {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_serbia.imageView.image;
        lb_selectedCountryName.text = lb_serbia.text;
        Country=@"serbia";
        highlight.center = CGPointMake(btn_serbia.center.x,btn_serbia.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"russia"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_russia.imageView.image;
        lb_selectedCountryName.text = lb_russia.text;
        Country=@"russia";
        highlight.center = CGPointMake(btn_russia.center.x,btn_russia.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"romania"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_romania.imageView.image;
        lb_selectedCountryName.text = lb_romania.text;
        Country=@"romania";
        highlight.center = CGPointMake(btn_romania.center.x,btn_romania.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"poland"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_poland.imageView.image;
        lb_selectedCountryName.text = lb_poland.text;
        Country=@"poland";
        highlight.center = CGPointMake(btn_poland.center.x,btn_poland.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"italy"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_italy.imageView.image;
        lb_selectedCountryName.text = lb_italy.text;
        Country=@"italy";
        highlight.center = CGPointMake(btn_italy.center.x,btn_italy.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"india"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_india.imageView.image;
        lb_selectedCountryName.text = lb_india.text;
        Country=@"india";
        highlight.center = CGPointMake(btn_india.center.x,btn_india.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"hungary"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_hungary.imageView.image;
        lb_selectedCountryName.text = lb_hungary.text;
        Country=@"hungary";
        highlight.center = CGPointMake(btn_hungary.center.x,btn_hungary.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"germany"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_germany.imageView.image;
        lb_selectedCountryName.text = lb_germany.text;
//        lb_us.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
        Country=@"germany";
        highlight.center = CGPointMake(btn_germany.center.x,btn_germany.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"france"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_france.imageView.image;
        lb_selectedCountryName.text = lb_france.text;
        Country=@"france";
        highlight.center = CGPointMake(btn_france.center.x,btn_france.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"finland"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_finland.imageView.image;
        lb_selectedCountryName.text = lb_finland.text;
        Country=@"finland";
        highlight.center = CGPointMake(btn_finland.center.x,btn_finland.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"czech"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_czech.imageView.image;
        lb_selectedCountryName.text = lb_czech.text;
        Country=@"czech";
        highlight.center = CGPointMake(btn_czech.center.x,btn_czech.center.y);
        highlight.hidden = NO;    }
    if ([Country isEqual:@"china"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_china.imageView.image;
        lb_selectedCountryName.text = lb_china.text;
        Country=@"china";
        highlight.center = CGPointMake(btn_china.center.x,btn_china.center.y);
        highlight.hidden = NO;
    }
    if ([Country isEqual:@"austria"]) {
        sv.hidden = YES;
        iv_selectedCountry.image = btn_austria.imageView.image;
        lb_selectedCountryName.text = lb_austria.text;
        Country=@"austria";
        highlight.center = CGPointMake(btn_austria.center.x,btn_austria.center.y);
        highlight.hidden = NO;    }
    if ([Country isEqual:@"austria"]) {
        NSLog(@"::::::::>");
    }
    // Do any additional setup after loading the view from its nib.
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

-(IBAction)buttonAction_openCountrysList;
{
    //sv.hidden = NO;
    if (Country==@"us") {
        iv_selectedCountry.image = [UIImage imageNamed:@"us@2x.png"];
    }
    if (Country==@"ukraine") {
        iv_selectedCountry.image = [UIImage imageNamed:@"ukraine@2x.png"];
    }
    if (Country==@"russia") {
        iv_selectedCountry.image = [UIImage imageNamed:@"russia@2x.png"];
    }
    if (Country==@"romania") {
        iv_selectedCountry.image = [UIImage imageNamed:@"romania@2x.png"];
    }
    if (Country==@"poland") {
        iv_selectedCountry.image = [UIImage imageNamed:@"poland@2x.png"];
    }
    if (Country==@"italy") {
        iv_selectedCountry.image = [UIImage imageNamed:@"italy@2x.png"];
    }
    if (Country==@"india") {
        iv_selectedCountry.image = [UIImage imageNamed:@"india@2x.png"];
    }
    if (Country==@"hungary") {
        iv_selectedCountry.image = [UIImage imageNamed:@"hungary@2x.png"];
    }
    if (Country==@"germany") {
        iv_selectedCountry.image = [UIImage imageNamed:@"germany@2x.png"];
    }
    if (Country==@"france") {
        iv_selectedCountry.image = [UIImage imageNamed:@"france@2x.png"];
    }
    if (Country==@"finland") {
        iv_selectedCountry.image = [UIImage imageNamed:@"finland@2x.png"];
    }
    if (Country==@"czech") {
        iv_selectedCountry.image = [UIImage imageNamed:@"czech@2x.png"];
    }
    if (Country==@"china") {
        iv_selectedCountry.image = [UIImage imageNamed:@"china@2x.png"];
    }
    if (Country==@"austria") {
        iv_selectedCountry.image = [UIImage imageNamed:@"austria@2x.png"];
    }
}
//=============Austria==============
-(IBAction)buttonAction_austria:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_austria.imageView.image;
    lb_selectedCountryName.text = lb_austria.text;
    Country=@"austria";
    highlight.center = CGPointMake(btn_austria.center.x,btn_austria.center.y);
    highlight.hidden = NO;
}
//==============China==============
-(IBAction)buttonAction_china:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_china.imageView.image;
    lb_selectedCountryName.text = lb_china.text;
    Country=@"china";
    highlight.center = CGPointMake(btn_china.center.x,btn_china.center.y);
    highlight.hidden = NO;
}
//=============Czech===============
-(IBAction)buttonAction_czech:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_czech.imageView.image;
    lb_selectedCountryName.text = lb_czech.text;
    Country=@"czech";
    highlight.center = CGPointMake(btn_czech.center.x,btn_czech.center.y);
    highlight.hidden = NO;
}
//===============Finland============
-(IBAction)buttonAction_finland:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_finland.imageView.image;
    lb_selectedCountryName.text = lb_finland.text;
    Country=@"finland";
    highlight.center = CGPointMake(btn_finland.center.x,btn_finland.center.y);
    highlight.hidden = NO;
}
//==============France===============
-(IBAction)buttonAction_france:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_france.imageView.image;
    lb_selectedCountryName.text = lb_france.text;
    Country=@"france";
    highlight.center = CGPointMake(btn_france.center.x,btn_france.center.y);
    highlight.hidden = NO;
}
//===============Germany================
-(IBAction)buttonAction_germany:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_germany.imageView.image;
    lb_selectedCountryName.text = lb_germany.text;
    Country=@"germany";
    highlight.center = CGPointMake(btn_germany.center.x,btn_germany.center.y);
    highlight.hidden = NO;
}
//==============Hungary=============
-(IBAction)buttonAction_hungary:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_hungary.imageView.image;
    lb_selectedCountryName.text = lb_hungary.text;
    Country=@"hungary";
    highlight.center = CGPointMake(btn_hungary.center.x,btn_hungary.center.y);
    highlight.hidden = NO;
}
//=============India============
-(IBAction)buttonAction_india:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_india.imageView.image;
    lb_selectedCountryName.text = lb_india.text;
    Country=@"india";
    highlight.center = CGPointMake(btn_india.center.x,btn_india.center.y);
    highlight.hidden = NO;
}
//=============Italy==========
-(IBAction)buttonAction_italy:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_italy.imageView.image;
    lb_selectedCountryName.text = lb_italy.text;
    Country=@"italy";
    highlight.center = CGPointMake(btn_italy.center.x,btn_italy.center.y);
    highlight.hidden = NO;
}
//============Poland============
-(IBAction)buttonAction_poland:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_poland.imageView.image;
    lb_selectedCountryName.text = lb_poland.text;
    Country=@"poland";
    highlight.center = CGPointMake(btn_poland.center.x,btn_poland.center.y);
    highlight.hidden = NO;
}
//=========Romania========
-(IBAction)buttonAction_romania:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_romania.imageView.image;
    lb_selectedCountryName.text = lb_romania.text;
    Country=@"romania";
    highlight.center = CGPointMake(btn_romania.center.x,btn_romania.center.y);
    highlight.hidden = NO;
}
//==============Russia=========
-(IBAction)buttonAction_russia:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_russia.imageView.image;
    lb_selectedCountryName.text = lb_russia.text;
    Country=@"russia";
    highlight.center = CGPointMake(btn_russia.center.x,btn_russia.center.y);
    highlight.hidden = NO;
}

//============Serbia========
-(IBAction)buttonAction_serbia:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_serbia.imageView.image;
    lb_selectedCountryName.text = lb_serbia.text;
    Country=@"serbia";
    highlight.center = CGPointMake(btn_serbia.center.x,btn_serbia.center.y);
    highlight.hidden = NO;
}
//=====================Ukraine===================
-(IBAction)buttonAction_ukraine:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_ukraine.imageView.image;
    lb_selectedCountryName.text = lb_ukraine.text;
    Country=@"ukraine";
    highlight.center = CGPointMake(btn_ukraine.center.x,btn_ukraine.center.y);
    highlight.hidden = NO;
}
//============U.S.==================
-(IBAction)buttonAction_us:(id)sender;
{
    sv.hidden = YES;
    iv_selectedCountry.image = btn_us.imageView.image;
    lb_selectedCountryName.text = lb_us.text;
    Country=@"us";
    highlight.center = CGPointMake(btn_us.center.x,btn_us.center.y);
    highlight.hidden = NO;
}

//============No More Countries After the Line================

-(IBAction)buttonAction_go2game:(UIButton *)_sender
{
    FGAirRifleGameViewController *vc_game = nil;
    FGRapidFireGameViewController *vc_rapid = nil;
    if (!tf_20letter.text || [tf_20letter.text isEqualToString:@""] ) {
        Name = @"Player";
    }
    else {
    Name=[tf_20letter.text copy];
    }
    switch (status) {
        case 1:
            vc_game = [[FGAirRifleGameViewController alloc] initWithNibName:@"FGAirRifleGameViewController" bundle:nil];
            vc_game.rounds = 1;
            globalRounds = 1;
            [self presentModalViewController:vc_game animated:YES];
            [vc_game release];
            break;
            
        case 2:
            vc_game = [[FGAirRifleGameViewController alloc] initWithNibName:@"FGAirRifleGameViewController" bundle:nil];
            vc_game.rounds = 3;
            globalRounds = 3;
            [self presentModalViewController:vc_game animated:YES];
            [vc_game release];
            break;
        case 3:
            vc_rapid = [[FGRapidFireGameViewController alloc] initWithNibName:@"FGRapidFireGameViewController" bundle:nil];
            vc_rapid.rounds = 1;
            globalRounds = 1;
            [self presentModalViewController:vc_rapid animated:YES];
            [vc_rapid release];
            break;
        case 4:
            vc_rapid = [[FGRapidFireGameViewController alloc] initWithNibName:@"FGRapidFireGameViewController" bundle:nil];
            vc_rapid.rounds = 3;
            globalRounds = 3;
            [self presentModalViewController:vc_rapid animated:YES];
            [vc_rapid release];
            break;
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"file.txt"];
    
    NSString *str = Name;
    
    [str writeToFile:filePath atomically:TRUE encoding:NSUTF8StringEncoding error:NULL];
    
    NSArray *pathsc = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectoryc = [pathsc objectAtIndex:0];
    NSString *filePathc = [documentsDirectoryc stringByAppendingPathComponent:@"filec.txt"];
    
    NSString *strc = Country;
    
    [strc writeToFile:filePathc atomically:TRUE encoding:NSUTF8StringEncoding error:NULL];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    return YES;
}

#define SIGN(x)	((x < 0.0f) ? -1.0f : 1.0f)

float xaccel, xvelocity;

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration{
    
	float xx = acceleration.x;
	float accelDirX = SIGN(xvelocity) * -1.0f; 
	float newDirX = SIGN(xx);
    
	if (accelDirX == newDirX)
		xaccel = (abs(xaccel) + 0.99f) * SIGN(xaccel);
    
	xvelocity = -xaccel * xx;
}


@end

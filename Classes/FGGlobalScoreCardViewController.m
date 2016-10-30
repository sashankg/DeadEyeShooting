//
//  FGGlobalScoreCardViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGGlobalScoreCardViewController.h"

@interface FGGlobalScoreCardViewController ()

@end

@implementation FGGlobalScoreCardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        arr_myScores = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString *str_url = @"http://www.fugumobile.mobi/starcouple/record.aspx?game=deadeye&t=1";
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:str_url]];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    
    
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

-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
{
    NSLog(@"didFail");
}



- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
{
    str_response = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"str_response=%@",str_response);
    NSMutableArray *arr = (NSMutableArray *)[str_response componentsSeparatedByString:@"~"];
    [arr removeLastObject];
    for(NSString *str in arr)
    {
        [arr_myScores addObject:[str componentsSeparatedByString:@"^"]];
    }
    if([arr_myScores count]>=1)
    l_Score1.text = [[arr_myScores objectAtIndex:0] objectAtIndex:3];
    else
        l_Score1.text = @"---";
    if([arr_myScores count]>=2)
    l_Score2.text = [[arr_myScores objectAtIndex:1] objectAtIndex:3];
    else
        l_Score2.text = @"---";
    if([arr_myScores count]>=3)
    l_Score3.text = [[arr_myScores objectAtIndex:2] objectAtIndex:3];
    else
        l_Score3.text = @"---";
    if([arr_myScores count]>=4)
    l_Score4.text = [[arr_myScores objectAtIndex:3] objectAtIndex:3];
    else
        l_Score4.text = @"---";
    if([arr_myScores count]>=5)
    l_Score5.text = [[arr_myScores objectAtIndex:4] objectAtIndex:3];
    else
        l_Score5.text = @"---";
    l_1.text = [[arr_myScores objectAtIndex:0] objectAtIndex:1];
    l_2.text = [[arr_myScores objectAtIndex:1] objectAtIndex:1];
    l_3.text = [[arr_myScores objectAtIndex:2] objectAtIndex:1];
    l_4.text = [[arr_myScores objectAtIndex:3] objectAtIndex:1];
    l_5.text = [[arr_myScores objectAtIndex:4] objectAtIndex:1];

    
}

-(void)dealloc
{
    [arr_myScores release];
    arr_myScores = nil;
    [super dealloc];
    
}
@end

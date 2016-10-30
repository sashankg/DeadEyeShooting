//
//  TopRapidQuickViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TopRapidQuickViewController.h"
#import "AppDelegate.h"


@interface TopRapidQuickViewController ()

@end

@implementation TopRapidQuickViewController

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
    arr_top5Score = [((AppDelegate *)[UIApplication sharedApplication].delegate) getTop5Score:@"TopRapidQuick"];
    NSLog(@"arr_top5Score=%@",arr_top5Score);
    l_Score1.text = [arr_top5Score objectAtIndex:0];
    l_Score2.text = [arr_top5Score objectAtIndex:1];
    l_Score3.text = [arr_top5Score objectAtIndex:2];
    l_Score4.text = [arr_top5Score objectAtIndex:3];
    l_Score5.text = [arr_top5Score objectAtIndex:4];
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

-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}
@end

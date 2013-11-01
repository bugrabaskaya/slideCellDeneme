//
//  ViewController.m
//  slideCellDeneme
//
//  Created by Bugra on 03.10.2013.
//  Copyright (c) 2013 Bugra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize slideTV;

- (void)viewDidLoad
{
    array = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [slideTV dequeueReusableCellWithIdentifier:nil];
    if (nil == cell) {
        cell =  [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:nil];
        
    }
    
    UILabel *nameOfVenuesLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 15)];
    [nameOfVenuesLabel setText:[array objectAtIndex:indexPath.row]];
    [nameOfVenuesLabel setFont:[UIFont boldSystemFontOfSize:14]];
    nameOfVenuesLabel.numberOfLines = 4;
    [nameOfVenuesLabel sizeToFit];
    nameOfVenuesLabel.adjustsFontSizeToFitWidth = YES;
    [cell addSubview:nameOfVenuesLabel];
    
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [slideTV deselectRowAtIndexPath:indexPath animated:YES];
    
    //deneme kodu eklendi
    
    //   [self.view addSubview:buttonView];
    
    //[self tableView:tableView didSelectRowAtIndexPath:indexPath];
    
    /*
     UITableViewCell *selectedCell = [tipsTV cellForRowAtIndexPath:indexPath];
     
     
     // NSLog(@"selected venueid %@",[venuesID objectAtIndex:indexPath.row]);
     
     if (selectedCell.accessoryType == UITableViewCellAccessoryCheckmark) {
     selectedCell.accessoryType = UITableViewCellAccessoryNone;
     //  [selectedCellsArray removeObject:[venuesID objectAtIndex:indexPath.row]];
     
     }else{
     [[tipsTV cellForRowAtIndexPath:indexPath]setAccessoryType:UITableViewCellAccessoryCheckmark];
     // [[tableView cellForRowAtIndexPath:indexPath]setAccessoryType:UITableViewCellAccessoryCheckmark];
     // [selectedCellsArray addObject:[venuesID objectAtIndex:indexPath.row]];
     
     
     }
     */
    
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

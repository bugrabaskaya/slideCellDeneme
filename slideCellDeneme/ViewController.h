//
//  ViewController.h
//  slideCellDeneme
//
//  Created by Bugra on 03.10.2013.
//  Copyright (c) 2013 Bugra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TISwipeableTableView.h"

@interface ViewController : UIViewController{

    NSMutableArray *array;


}
@property (weak, nonatomic) IBOutlet UITableView *slideTV;

@end

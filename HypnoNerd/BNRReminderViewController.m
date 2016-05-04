//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Tyler Bird on 2/18/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker * datePicker;

@end

@implementation BNRReminderViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if ( self )
    {
        self.tabBarItem.title = @"Reminder";
    
        UIImage * image = [UIImage imageNamed:@"Time.png"];
    
        self.tabBarItem.image = image;
    }
    
    return self;
}

-(IBAction)addReminder:(id)sender
{
    NSDate * date = self.datePicker.date;
    
    UILocalNotification * note = [[UILocalNotification alloc] init];
    
    note.alertBody = @"Hypnotize me!";
    
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
    
    
}


@end

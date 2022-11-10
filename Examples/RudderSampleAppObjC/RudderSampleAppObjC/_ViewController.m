//
//  _ViewController.m
//  Rudder
//
//  Created by arnabp92 on 02/26/2020.
//  Copyright (c) 2020 arnabp92. All rights reserved.
//

#import "_ViewController.h"
#import <Rudder/Rudder.h>

@interface _ViewController ()

@end

@implementation _ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)track:(id)sender {
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options putIntegration:@"braze" isEnabled:true];
//    [options putCustomContext:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } withKey:@"new-1"];
//
//    RSMessage *message = [[RSMessage alloc] init];
//    message.event = @"Apple";
//    message.channel = @"JS";
//
//    [[RSClient sharedInstance] identify:@"userId 12kjk" traits:@{
//                    @"item-1": @"price-1",
//                    @"item-2": @"price-2"
//                } options:options];
//    RSClient *client = [RSClient getInstance];
//    [[client getContext] persistTraits];
//    sleep(10000);
    [[RSClient sharedInstance] track:@"track event"];
    
}
- (IBAction)reset:(id)sender {
    
//    [[RSClient sharedInstance] reset];
    [[RSClient sharedInstance] flush];
//    [[RSClient sharedInstance] endSession];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

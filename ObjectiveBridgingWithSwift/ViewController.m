//
//  ViewController.m
//  ObjectiveBridgingWithSwift
//
//  Created by Abdullah on 20/01/2024.
//

#import "ViewController.h"
#import "ObjectiveBridgingWithSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SampleClass *obj = [SampleClass alloc];
    
    
    void (^myCallback)(SampleResponse *) = ^(SampleResponse *reponse) {
        //NSString *message = reponse.message;
        NSString *initializedString = reponse.message;

        NSLog(@"Callback from Swift using closure! %@", initializedString);
    };
    
    [obj setSampleCallback:myCallback];
    [obj sampleOperatation];
    
}


@end

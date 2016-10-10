//
//  MMViewController.m
//  CodeEuropeExample
//
//  Created by Marek Mościchowski on 10/10/16.
//  Copyright © 2016 Marek Mościchowski. All rights reserved.
//

#import "MMViewController.h"
#import "MMViewModel.h"

@interface MMViewController ()

@property(nonatomic, strong) id <MMViewModel> vm;

@end

@implementation MMViewController

- (instancetype)initWithVM:(id <MMViewModel>) vm {
    self = [super initWithNibName:nil bundle:[NSBundle bundleForClass:self.class]];
    if (self) {
        _vm = vm;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = [self.vm string];
}

@end

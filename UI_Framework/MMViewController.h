//
//  MMViewController.h
//  CodeEuropeExample
//
//  Created by Marek Mościchowski on 10/10/16.
//  Copyright © 2016 Marek Mościchowski. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MMViewModel;

@interface MMViewController : UIViewController

@property(nonatomic, weak) IBOutlet UILabel *label;

- (instancetype)initWithVM:(id <MMViewModel>) vm;

@end

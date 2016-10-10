//
//  ViewControllerTests.m
//  CodeEuropeExample
//
//  Created by Marek Mościchowski on 09.10.2016.
//  Copyright © 2016 Marek Mościchowski. All rights reserved.
//

#import "ViewControllerTests.h"
#import "MMViewController.h"
#import "MMViewModel.h"

@interface MockVM : NSObject <MMViewModel>

@property(nonatomic, copy) NSString *mockString;

@end

@implementation MockVM

- (NSString *) string {
    return self.mockString;
}

@end

@implementation ViewControllerTests

- (void)testHelloWorld {
    MockVM *mock = [MockVM new];
    mock.mockString = @"Hello world";
    MMViewController *vc = [[MMViewController alloc] initWithVM:mock];
    
    [vc view];
    MMAssertEqual(vc.label.text, @"Hello world")// @"Hello world");
}

@end


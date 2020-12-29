//
//  LogInVC.m
//  Example
//
//  Created by John Blaine on 10/4/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import "LogInVC.h"
#import "LogInVC+Model.h"

@interface LogInVC ()

@end

@implementation LogInVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.login = [[iLogin alloc] initWithFrame:CGRectZero];
    [self.view addSubview:self.login];
    
    [self watchLogin];
}

- (void) watchLogin {
            
    [self.login watchAction:1 login:^(NSString *usr, NSString *pwd, void (^toast)(NSString *s)) {
        [self Login:usr pwd:pwd ok:^(NSString *i) {
            toast(i);
        } fail:^(NSString *i) {
            toast(i);
        }];
        
    } createAccount:^(NSString *name, NSString *email, NSString *pwd, void (^toast)(NSString *s)) {
        
        [self createUser:name email:email pwd:pwd ok:^(NSString *i) {
            toast(nil);
        } fail:^(NSString *i) {
            toast(nil);
        }];
    } changePwd:^(NSString *email, NSString *pwd, void (^toast)(NSString *s)) {
    
    }];
}

- (void)viewWillLayoutSubviews{
    CGFloat w = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    self.login.frame = CGRectMake( w * 0.1, h * 0.2,  w * 0.8,  h * 0.3 );
}


@end

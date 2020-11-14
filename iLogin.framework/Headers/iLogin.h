//
//  iLogin.h
//  iLogin
//
//  Created by John Blaine on 9/13/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "iSignin.h"
#import "iRegister.h"
#import "iForgot.h"
#import "iCreatePwd.h"
#import "iVerify.h"
#import "CNotify.h"

FOUNDATION_EXPORT double iLoginVersionNumber;
FOUNDATION_EXPORT const unsigned char iLoginVersionString[];

@interface iLogin : UIView

@property (nonatomic, strong) iSignin *signin;
@property (nonatomic, strong) iRegister *reg;
@property (nonatomic, strong) iForgot *forgot;
@property (nonatomic, strong) iCreatePwd *createPwd;
@property (nonatomic, strong) iVerify *verify;
@property (nonatomic, retain) CNotify *msg;
@property (nonatomic, retain) NSMutableDictionary *info;

@property (nonatomic, retain) UIActivityIndicatorView *indicator;


- (void)watchAction:(NSInteger)n login:(void(^)(NSString *usr, NSString *pwd, void(^toast)(NSString *s)  ))lx createAccount:(void(^)(NSString *name, NSString *email, NSString *pwd, void(^toast)(NSString *s) ))rx changePwd:(void(^)(NSString *email, NSString *pwd, void(^toast)(NSString *s) ))fx;

@property (copy, nonatomic) void (^loginCB)(NSString *usr, NSString *pwd, void(^toast)(NSString *s)  );
@property (copy, nonatomic) void (^registerCB)(NSString *name, NSString *email, NSString *pwd, void(^toast)(NSString *s) );
@property (copy, nonatomic) void (^changePwdCB)(NSString *email, NSString *pwd, void(^toast)(NSString *s) );


- (void)showStatus:(Boolean)b;
- (void)loginError:(NSString*)b;

@end


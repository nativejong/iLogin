//
//  iVerify.h
//  TestLogin
//
//  Created by John Blaine on 9/16/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CText.h"

NS_ASSUME_NONNULL_BEGIN

@interface iVerify : UIView
@property (nonatomic, retain) UIButton *title;
@property (nonatomic, retain) CText *usr;
@property (nonatomic, retain) UIButton *resend;
@property (nonatomic, retain) UIButton *submit;
@property (nonatomic, retain) NSString *passcode;

- (void)correctPassCode:(NSString*)n;

- (void)watchAction:(NSInteger)n code:(void(^)(NSString *s))lx resend:(void(^)(NSString *s))rx incorrect:(void(^)(NSString *s))ic back:(void(^)(NSString *phone))bx;

@property (copy, nonatomic) void (^loginCB)(NSString *s);
@property (copy, nonatomic) void (^resendCB)(NSString *s);
@property (copy, nonatomic) void (^incorrectCB)(NSString *s);
@property (copy, nonatomic) void (^backCB)(NSString *phone);

@end

NS_ASSUME_NONNULL_END

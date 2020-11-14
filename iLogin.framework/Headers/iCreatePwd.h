//
//  iCreatePwd.h
//  iLogin
//
//  Created by John Blaine on 9/13/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CText.h"

NS_ASSUME_NONNULL_BEGIN

@interface iCreatePwd : UIView
@property (nonatomic, retain) UIButton *title;
@property (nonatomic, retain) UIButton *login;
@property (nonatomic, retain) CText *usr;
@property (nonatomic, retain) CText *pwd;


- (void)watchAction:(NSInteger)n pwd:(void(^)(NSString *i))lx back:(void(^)(NSString *phone))bx;
@property (copy, nonatomic) void (^pwdCB)(NSString *i);
@property (copy, nonatomic) void (^backCB)(NSString *phone);

@end

NS_ASSUME_NONNULL_END

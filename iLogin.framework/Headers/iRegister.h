//
//  iRegister.h
//  iLogin
//
//  Created by John Blaine on 9/13/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CText.h"

NS_ASSUME_NONNULL_BEGIN

@interface iRegister : UIView
@property (nonatomic, retain) UIButton *title;
@property (nonatomic, retain) UIButton *login;
@property (nonatomic, retain) CText *name;
@property (nonatomic, retain) CText *email;

- (void)watchAction:(NSInteger)n  reg:(NSString*(^)(NSString *name, NSString *email))rx back:(void(^)(NSString *phone))bx;
@property (copy, nonatomic) NSString* (^registerCB)(NSString *name, NSString *email);
@property (copy, nonatomic) void (^backCB)(NSString *phone);


@end

NS_ASSUME_NONNULL_END

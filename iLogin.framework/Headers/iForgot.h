//
//  iForgot.h
//  TestFramework
//
//  Created by John Blaine on 9/13/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CText.h"

NS_ASSUME_NONNULL_BEGIN

@interface iForgot : UIView
@property (nonatomic, retain) UIButton *title;
@property (nonatomic, retain) CText *usr;
@property (nonatomic, retain) UIButton *reg;


- (void)watchAction:(NSInteger)n data:(void(^)(NSString *phone))lx back:(void(^)(NSString *phone))bx;
@property (copy, nonatomic) void (^dataCB)(NSString *phone);
@property (copy, nonatomic) void (^backCB)(NSString *phone);

@end

NS_ASSUME_NONNULL_END

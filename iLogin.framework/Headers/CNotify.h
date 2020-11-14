//
//  CNotify.h
//  iLogin
//
//  Created by John Blaine on 10/2/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CNotify : UIView
@property (nonatomic, retain) UIButton *msg;
@property (nonatomic, retain) UIButton *cart;

//- (void) showIt:(NSString*)s;
- (void)showNow:(NSString*)s done:(NSString*(^)(NSString *usr, NSString *pwd))doneIt;

@end

NS_ASSUME_NONNULL_END

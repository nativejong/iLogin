//
//  CText.h
//  TestLogin
//
//  Created by John Blaine on 10/3/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CText : UIView<UITextFieldDelegate>
@property (nonatomic, retain) UITextField *title;
@property (nonatomic, retain) UITextField *txt;
@property (nonatomic, retain) UITextField *error;
@property (nonatomic, retain) UIImageView *photo;
@property (nonatomic, retain) UITextField *toaster;


- (id)initWithFrame:(CGRect)frame name:(NSString*)n image:(NSString*)p;

- (void) addError:(NSString*)e  bg:(UIColor*)c;

- (void)watchAction:(NSInteger)n text:(NSObject*(^)(NSString *nm, NSString *s))tx;
@property (copy, nonatomic) NSObject* (^textCB)(NSString *nm, NSString *s);
- (void) toast:(NSString*)s;

@end

NS_ASSUME_NONNULL_END

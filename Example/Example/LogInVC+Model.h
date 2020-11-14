//
//  LogInVC+Model.h
//  Example
//
//  Created by John Blaine on 10/4/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import "LogInVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface LogInVC (Model)
-(void)createUser:(NSString*)nm email:(NSString*)e pwd:(NSString*)p  ok:(void(^)(NSString*))success fail:(void(^)(NSString*))f;

-(void)Login:(NSString*)e pwd:(NSString*)p ok:(void(^)(NSString*))success fail:(void(^)(NSString*))f;

-(void)changePwd:(NSString*)email pwd:(NSString*)password;

@end

NS_ASSUME_NONNULL_END

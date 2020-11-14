//
//  LogInVC+Model.m
//  Example
//
//  Created by John Blaine on 10/4/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import "LogInVC+Model.h"
#ifdef DEBUG
#else
#import <Firebase.h>
#endif

@implementation LogInVC (Model)

#ifdef DEBUG

-(void)createUser:(NSString*)nm email:(NSString*)e pwd:(NSString*)p  ok:(void(^)(NSString*))success fail:(void(^)(NSString*))failed  {
    success( @"Success" );
}

-(void)Login:(NSString*)e pwd:(NSString*)p ok:(void(^)(NSString*))success fail:(void(^)(NSString*))failed {
    success( @"Success" );
}

-(void)changePwd:(NSString*)email pwd:(NSString*)password {
}

-(void)sigOutAction:(UIButton *)sender ok:(void(^)(NSInteger))success fail:(void(^)(NSInteger))failed {
    success( @"Success" );
}

#else

-(void)createUser:(NSString*)nm email:(NSString*)e pwd:(NSString*)p  ok:(void(^)(NSString*))success fail:(void(^)(NSString*))failed  {

    e = [NSString stringWithFormat:@"%@%@", e, @"@gmail.com"];
    
    [[FIRAuth auth]  createUserWithEmail:e password:p completion:^(FIRUser *user, NSError *error) {
        
        if ( error ){
            failed( error.localizedDescription );
        } else {
            
            FIRUserProfileChangeRequest *changeRequest = [[FIRAuth auth].currentUser profileChangeRequest];
            changeRequest.displayName = nm;
            
            [changeRequest commitChangesWithCompletion:^(NSError *err) {
                if ( err ){
                    NSLog(@"Unable to create profile");
                } else {
                    NSLog(@"Able to create profile");
                }
                
            }];

            success( @"Success" );
        }
    }];
}


-(void)Login:(NSString*)e pwd:(NSString*)p ok:(void(^)(NSString*))success fail:(void(^)(NSString*))failed {
    NSLog(@"btnAction");
    e = [NSString stringWithFormat:@"%@%@", e, @"@gmail.com"];

    [[FIRAuth auth] signInWithEmail:e password:p completion:^(FIRUser *user, NSError *error) {
        if ( error ){
            failed( error.localizedDescription );
        } else {
            success( @"Success" );
        }
    }];
}


-(void)changePwd:(NSString*)email pwd:(NSString*)password {
    NSLog(@"btnAction");

    [[FIRAuth auth] signInWithEmail:email password:password completion:^(FIRUser *user, NSError *error) {
        if ( error ){
            NSLog(@"Error");
        } else {
            NSLog(@"Success");
            [[FIRAuth auth].currentUser updatePassword:password completion:^(NSError *error) {
            }];
        }
    }];
}

-(void)sigOutAction:(UIButton *)sender ok:(void(^)(NSInteger))success fail:(void(^)(NSInteger))failed {
    NSLog(@"btnAction");
    
    NSError *signOutError;
    BOOL status = [[FIRAuth auth] signOut:&signOutError];
    if (!status) {
      NSLog(@"Error signing out: %@", signOutError);
      return;
    }
}



-(NSString*)errorMsg:(NSInteger)c   {
    NSString *m = @"";

    if ( c == FIRAuthErrorCodeEmailAlreadyInUse ){
        m = @"Email already in use.";
    } else if ( c == FIRAuthErrorCodeOperationNotAllowed ){
        m = @"sign-in provider is disabled.";
    } else {
        
    }
    
    return(m);
}
#endif

@end

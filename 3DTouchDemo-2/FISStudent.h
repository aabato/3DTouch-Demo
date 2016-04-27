//
//  FISStudent.h
//  3D-touch-demo
//
//  Created by Angelica Bato on 3/15/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISStudent : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *funFact;
@property (strong, nonatomic) UIImage *cleanPicture;
@property (strong, nonatomic) UIImage *funnyPicture;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
+ (NSMutableArray *)createFISClass;

@end

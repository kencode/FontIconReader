//
//  FontViewController.h
//  Font-icon
//
//  Created by 王宏 on 15/1/8.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontViewController : UIViewController

@property (strong,nonatomic)NSDictionary *fontDictionary;
@property(strong,nonatomic)NSMutableArray *dataArray;
+ (NSDictionary *)dictionaryFromResource:(NSString *)resName;


@end
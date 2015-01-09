//
//  ZocailViewController.m
//  Font-icon
//
//  Created by 王宏 on 15/1/8.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "ZocailViewController.h"
#import <UIView+FLKAutoLayout.h>
#import <IconFont.h>
@interface ZocailViewController ()

@end

@implementation ZocailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.fontDictionary = [ZocailViewController dictionaryFromResource:@"zocialRegularWebfont.json"];
    self.dataArray = [NSMutableArray arrayWithArray:self.fontDictionary.allKeys];
    UIScrollView *scrollview = [[UIScrollView alloc]init];
    [self.view addSubview:scrollview];
    [scrollview alignTop:@"20" bottom:@"-45" toView:self.view];
    [scrollview alignLeading:@"0" trailing:@"0" toView:self.view];
    
    int pernumer = floor(self.view.bounds.size.width/40);
    CGFloat contentHeight = ceil(self.dataArray.count/pernumer)*40+40;
    scrollview.contentSize = CGSizeMake(self.view.bounds.size.width, contentHeight);
    
    for(int i=0;i<self.dataArray.count;i++)
    {
        NSString *key = [self.dataArray objectAtIndex:i];
        UIButton *btn = [IconFont buttonWithIcon:[IconFont icon:key fromFont:@"Zocial-Regular"] fontName:@"Zocial-Regular" size:15.0f color:[UIColor orangeColor]];
        [scrollview addSubview:btn];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnPressed:) forControlEvents:UIControlEventTouchUpInside];
        int m = (i%pernumer);
        int n = (int)(i/pernumer);
        [btn alignTop:[NSString stringWithFormat:@"%i",n*40] leading:[NSString stringWithFormat:@"%i",m*40] toView:scrollview];
    }
}

- (void)btnPressed:(UIButton *)sender
{
    NSString *key = [self.dataArray objectAtIndex:sender.tag];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"icon命名为" message:key delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
+ (NSDictionary *)dictionaryFromResource:(NSString *)resName{
    NSString *	extension = [resName pathExtension];
    NSString *	fullName = [resName substringToIndex:(resName.length - extension.length - 1)];
    
    NSString * path = [[NSBundle mainBundle] pathForResource:fullName ofType:extension];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSError * error = nil;
    NSObject * obj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    if ( obj && [obj isKindOfClass:[NSDictionary class]])
    {
        return (NSDictionary *)obj;
    }else{
        return nil;
    }
}

@end

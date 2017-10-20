//
//  coreAnimateViewController.m
//  Run loops
//
//  Created by 晓磊 on 2017/10/19.
//  Copyright © 2017年 cc. All rights reserved.
//

#import "coreAnimateViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface coreAnimateViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UIView *head;
}
@end

@implementation coreAnimateViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [UIImage imageNamed:@"haohua01"];
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.layer.contents = (__bridge id _Nullable)(image.CGImage);
    //   view.layer.contentsGravity = kCAGravityCenter;
    //    view.backgroundColor = [UIColor redColor];
    //  view.layer.contentsScale = [UIScreen mainScreen].scale;
    [self.view addSubview:view];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIImage *image = [UIImage imageNamed:@"haohua01"];
//    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
//    view.layer.contents = (__bridge id _Nullable)(image.CGImage);
// //   view.layer.contentsGravity = kCAGravityCenter;
////    view.backgroundColor = [UIColor redColor];
// //  view.layer.contentsScale = [UIScreen mainScreen].scale;
//    [self.view addSubview:view];
    
  
//    head = [[UIView alloc] initWithFrame:CGRectMake(0, 64,  [UIScreen mainScreen].bounds.size.width, 200)];
//    head.layer.contents = (__bridge id)[UIImage imageNamed:@"13.png"].CGImage;
//    [self.view addSubview:head];
//
//
//    UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 264, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height-164) style:UITableViewStylePlain];
//    tab.delegate = self;
//    tab.dataSource = self;
//    [self.view addSubview:tab];
//    [tab registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            // * supported on Mac OS X 10.6 and later.)
            head.layer.contents = (__bridge id)([UIImage imageNamed:@"haohua01"].CGImage);
             head.layer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
        }
            break;
            
        default:
            break;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    switch (indexPath.row) {
        case 0:
        {
            cell.textLabel.text = @"寄宿图层";
        }
            break;
            
        default:
            break;
    }
    return cell;
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

@end

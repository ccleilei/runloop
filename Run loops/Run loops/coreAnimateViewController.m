//
//  coreAnimateViewController.m
//  Run loops
//
//  Created by 晓磊 on 2017/10/19.
//  Copyright © 2017年 cc. All rights reserved.
//

#import "coreAnimateViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "headView.h"
@interface coreAnimateViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    headView *head;
}
@end

@implementation coreAnimateViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    head = [[headView alloc] initWithFrame:CGRectMake(0, 64,  [UIScreen mainScreen].bounds.size.width, 200)];
    [self.view addSubview:head];


    UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 264, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height-164) style:UITableViewStylePlain];
    tab.delegate = self;
    tab.dataSource = self;
    [self.view addSubview:tab];
    [tab registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
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
        case 0:{
            // * supported on Mac OS X 10.6 and later.)
            UIImage *img = [UIImage imageNamed:@"p"];
            head.layer.contents = (__bridge id)(img.CGImage);
            head.layer.contentsGravity = kCAGravityResizeAspect;
            head.layer.contentsScale = img.scale;
        }
            break;
        case 1:{
            [head setNeedsDisplay];
        }
            break;
        default:
            break;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    switch (indexPath.row) {
        case 0:{
            cell.textLabel.text = @"寄宿图层";
        }
            break;
        case 1:{
            cell.textLabel.text = @"disPlay";
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

//
//  ViewController.m
//  Ejemplos_Animaciones
//
//  Created by Seba on 13/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import "ViewController.h"
#import "AnimationViewController.h"
#import "GiroSliderViewController.h"
#import "CarouselViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    _array = [[NSMutableArray alloc] init];
    [_array addObject:@"Animation"];
    [_array addObject:@"GiroSliderViewController"];
    [_array addObject:@"CarouselViewController"];

    
 //   [_array addObject:@""];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell= [[UITableViewCell alloc]init];
    NSString *str = _array[indexPath.row] ;
    cell.textLabel.text = str;
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        UIStoryboard * board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        AnimationViewController *animatioAux = [board instantiateViewControllerWithIdentifier:@"AnimationViewController" ];

        [self presentViewController:animatioAux  animated:YES completion:^{} ];
    }else if(indexPath.row == 1){
        UIStoryboard * board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        GiroSliderViewController *animatioAux = [board instantiateViewControllerWithIdentifier:@"GiroSliderViewController" ];
        
        [self presentViewController:animatioAux  animated:YES completion:^{} ];
    }else if(indexPath.row == 2){
        UIStoryboard * board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        CarouselViewController *animatioAux = [board instantiateViewControllerWithIdentifier:@"CarouselViewController" ];
        
        [self presentViewController:animatioAux  animated:YES completion:^{} ];
    }
    
    
    
}


@end

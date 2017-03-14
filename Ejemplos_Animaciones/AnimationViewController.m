//
//  AnimationViewController.m
//  Ejemplos_Animaciones
//
//  Created by Seba on 13/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimationViewController.h"
#import "Figura.h"

@implementation AnimationViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _circulo = [[CirculoNaranja alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    _circulo.center = CGPointMake(25, 50);
    [self.view addSubview:_circulo];
    
    
    _cuadrado = [[CuadradoRojo alloc] initWithFrame:CGRectMake(90, 70, 50, 50)];
    _cuadrado.center = CGPointMake(25, 50);
    [self.view addSubview:_cuadrado];
    
    
    UITapGestureRecognizer * gesto= [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animationMovimiento:)];
    [self.view addGestureRecognizer:gesto];
    

    // Do any additional setup after loading the view, typically from a nib.
}
-(void)animationMovimiento:(UIGestureRecognizer *) reconizer{
    [UIView animateWithDuration:2 animations:^{_circulo.center = CGPointMake(CGRectGetMaxX(self.view.bounds),CGRectGetMaxY(self.view.bounds));} completion:^(BOOL finished ){}];

}


-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

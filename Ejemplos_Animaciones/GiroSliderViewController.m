//
//  GiroSliderViewController.m
//  Ejemplos_Animaciones
//
//  Created by Seba on 14/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiroSliderViewController.h"
#import "Figura.h"

@implementation GiroSliderViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _angulo = 0.0 ;
    _sliderGira.transform = CGAffineTransformMakeRotation(90/180*M_PI);
}


-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderControlador:(id)sender {
    
    _etiqueta.text = [NSString stringWithFormat:@"%.2f", _sliderControl.value];
    
    _angulo = _sliderControl.value;
        _sliderGira.transform = CGAffineTransformMakeRotation(_angulo/180*M_PI);
}
@end

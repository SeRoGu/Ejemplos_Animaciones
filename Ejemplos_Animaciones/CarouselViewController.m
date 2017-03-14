//
//  CarouselViewController.m
//  Ejemplos_Animaciones
//
//  Created by Seba on 14/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarouselViewController.h"
#import "Carousel.h"

@implementation CarouselViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    Carousel * carruselAux = [[Carousel alloc] initWithFrame: CGRectMake(0, 50, 320, 320)];
    [carruselAux setImagenes: [NSArray arrayWithObjects: @"fireworks-227383_1280.jpg" ,  @"hong-kong-1990268_1280.jpg" ,  @"kuwait-252613_1280.jpg" ,nil]  ];
    [self.view addSubview:carruselAux];
}


-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

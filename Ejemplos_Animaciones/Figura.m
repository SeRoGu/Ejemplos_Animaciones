//
//  Figura.m
//  Ejemplos_Animaciones
//
//  Created by Seba on 13/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Figura.h"


@implementation Figura

-(id) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.opaque = NO;
    }
    return self;
}
-(void)drawRect:(CGRect)rect{
    [[UIColor orangeColor] setFill];
    [[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];
}

@end


@implementation CirculoNaranja


-(void)drawRect:(CGRect)rect{
    [[UIColor orangeColor] setFill];
    [[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];
}

@end

@implementation CuadradoRojo

-(void)drawRect:(CGRect)rect{
    [[UIColor redColor] setFill];
    [[UIBezierPath bezierPathWithRect: self.bounds] fill];
}

@end
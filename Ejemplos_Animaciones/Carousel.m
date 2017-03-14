//
//  Carousel.m
//  Ejemplos_Animaciones
//
//  Created by Seba on 14/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carousel.h"

@implementation Carousel

@synthesize paginacion;
@synthesize imagenes;

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
    
    }
    return self;
}
-(void)setImagenes:(NSArray *)fotosArray{
    if(fotosArray != imagenes){
        imagenes = fotosArray;
        [self configurarSlider];
    }
}

-(void) configurarSlider{
    UIScrollView * scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
    [scrollView setDelegate:self];
    [scrollView setShowsHorizontalScrollIndicator:YES];
    [scrollView setPagingEnabled:YES];
    [scrollView setBounces:YES];
    
    CGSize tamanioScrollView = scrollView.frame.size;
    for (NSInteger i=0; i< [self.imagenes count]; i++) {
        CGRect dibujarSlider = CGRectMake(tamanioScrollView.width * i, 0 , tamanioScrollView.width, tamanioScrollView.height);
        UIView * marcoSlider = [[UIView alloc] initWithFrame:dibujarSlider];
        [marcoSlider setBackgroundColor:[UIColor blackColor]];
        
        UIImageView * vistaImagen = [[UIImageView alloc] initWithFrame:self.frame];
        [vistaImagen setImage:[UIImage imageNamed:[self.imagenes objectAtIndex:i]]];
        [marcoSlider addSubview:vistaImagen];
        [scrollView addSubview:marcoSlider];
        
        
    }
    UIPageControl * puntosBlancoPageScroll = [[UIPageControl alloc] initWithFrame:CGRectMake(0, tamanioScrollView.height -250, tamanioScrollView.width, 15)];
    [self setPaginacion:puntosBlancoPageScroll];
    [self.paginacion setNumberOfPages:3];
    [scrollView setContentSize:CGSizeMake(tamanioScrollView.width * [self.imagenes count] , tamanioScrollView.height)];
    [self addSubview:scrollView];
    [self addSubview:self.paginacion];

    
    
}

-(void) scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat anchoPagina = scrollView.frame.size.width;
    int pagina = floor((scrollView.contentOffset.x -anchoPagina /2) /anchoPagina)+1;
    [self.paginacion setCurrentPage:pagina];
    
}

@end

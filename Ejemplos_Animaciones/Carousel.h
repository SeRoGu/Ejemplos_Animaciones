//
//  Carousel.h
//  Ejemplos_Animaciones
//
//  Created by Seba on 14/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Carousel : UIView <UIScrollViewDelegate>


@property (nonatomic, retain) UIPageControl * paginacion;
@property (nonatomic, retain) NSArray * imagenes;
-(void) configurarSlider;
@end

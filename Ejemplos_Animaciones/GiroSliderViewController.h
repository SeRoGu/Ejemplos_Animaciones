//
//  GiroSliderViewController.h
//  Ejemplos_Animaciones
//
//  Created by Seba on 14/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface GiroSliderViewController : UIViewController
@property float angulo;
@property (strong, nonatomic) IBOutlet UILabel *etiqueta;
@property (strong, nonatomic) IBOutlet UISlider *sliderGira;
@property (strong, nonatomic) IBOutlet UISlider *sliderControl;
- (IBAction)sliderControlador:(id)sender;

@end


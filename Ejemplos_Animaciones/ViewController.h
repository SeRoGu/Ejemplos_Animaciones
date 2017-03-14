//
//  ViewController.h
//  Ejemplos_Animaciones
//
//  Created by Seba on 13/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic,retain) NSMutableArray *array;

@end


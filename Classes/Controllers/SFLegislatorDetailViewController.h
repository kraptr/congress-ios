//
//  SFLegislatorDetailViewController.h
//  Congress
//
//  Created by Daniel Cloud on 12/13/12.
//  Copyright (c) 2012 Sunlight Foundation. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SFLegislator;
@class SFLegislatorDetailView;

@interface SFLegislatorDetailViewController : UIViewController

@property (nonatomic, retain, setter = setLegislator:) SFLegislator *legislator;

@property (nonatomic, strong) SFLegislatorDetailView *legislatorDetailView;

@end
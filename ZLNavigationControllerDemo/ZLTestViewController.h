//
//  ZLTestViewController.h
//  CustomNavigationController
//
//  Created by zhaoliang on 15/11/12.
//  Copyright © 2015年 zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Mapbox;

@interface ZLTestViewController : UIViewController

@property (strong, nonatomic) NSString *subject;
@property (strong, nonatomic) NSString *area;
@property (nonatomic) MGLMapView *mapView;
@property (nonatomic) MGLPolygon *selected_polygon;
@property (nonatomic) MGLPolyline *selected_polyline;
@property (nonatomic) MGLPointAnnotation *tap_position;

@end

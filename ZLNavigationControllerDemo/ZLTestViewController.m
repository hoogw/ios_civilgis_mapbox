//
//  ZLTestViewController.m
//  CustomNavigationController
//
//  Created by zhaoliang on 15/11/12.
//  Copyright © 2015年 zhao. All rights reserved.
//

#import "ZLTestViewController.h"
#import "ZLCommonConst.h"

@interface ZLTestViewController ()

//@property (nonatomic, weak) UIView *nightView;

@end

@implementation ZLTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    //.............. mapbox init ................
    
    
    
    // ----- satellite style -----
//    NSURL *styleURL = [MGLStyle satelliteStyleURLWithVersion:9];
//    
//    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds styleURL:styleURL];
   // MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.frame styleURL:styleURL];
    
    
    //----- custom style -------
    
    
    
    NSMutableDictionary *style_url = [NSMutableDictionary dictionary];
    
    [style_url setObject:@"mapbox://styles/hoogw/ciqck140k0015g0nl5z1uq2v7" forKey:@"city_all"];
    [style_url setObject:@"mapbox://styles/hoogw/ciqcn42gx003ebzm9v86elejr" forKey:@"city_address"];
    [style_url setObject:@"mapbox://styles/hoogw/ciqcn7oww001ag0nlbi22gj8i" forKey:@"city_parcels"];
    [style_url setObject:@"mapbox://styles/hoogw/ciqcnhx0m003acrnfdg2be0v7" forKey:@"city_streets"];
    
    
    NSString *url_key = [NSString stringWithFormat:@"%@_%@",_area, _subject];
    
    
    
    
    //NSURL *styleURL = [NSURL URLWithString:@"mapbox://styles/hoogw/ciqck140k0015g0nl5z1uq2v7"];
    NSURL *styleURL = [NSURL URLWithString:[style_url objectForKey:url_key]];
    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds
                                                   styleURL:styleURL];
    
    
    
    
    // Tint the ℹ️ button.
    mapView.attributionButton.tintColor = [UIColor whiteColor];
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // set the map’s center coordinates and zoom level
    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(33.6599244, -117.915058135)
                       zoomLevel:12
                        animated:NO];
    
    
    mapView.showsUserLocation = YES;
    
    
    
    mapView.delegate = self;
    
    [self.view addSubview:mapView];
    
    
    
    
    
    
     //..............End........ mapbox init ................
    
    
    
    
    // ----- title text ------------
    
    UITextView *mytext = [[UITextView alloc] initWithFrame:CGRectMake(100, 20, 200.0, 28.0)];
    mytext.backgroundColor = [UIColor clearColor];
    //mytext.backgroundColor = [UIColor blackColor];
    NSString *title = [_area stringByAppendingString:@" - "];
    title = [title stringByAppendingString:_subject];
    mytext.text = title;
    mytext.textColor = [UIColor whiteColor];
    mytext.font = [UIFont systemFontOfSize:15];
    mytext.editable = NO;
    [self.view addSubview:mytext];
    
    
    
    
    //-------- back button ------
    
    UIButton *backbtn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    backbtn.frame = CGRectMake(0, 20, 50, 18);
    [backbtn setTitle:@"< back" forState:UIControlStateNormal];
    [backbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    backbtn.backgroundColor = [UIColor blackColor];
    //backbtn.backgroundColor = [UIColor clearColor];
    
    [backbtn addTarget:self action:@selector(backbtnPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backbtn];
    
    
    

    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)backbtnPressed:(UIButton *)button {
    //NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



//- (IBAction)btnClick:(id)sender {
//    [self dismissViewControllerAnimated:YES completion:nil];
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


#import "ZLTestViewController.h"
#import "ZLCommonConst.h"

@interface ZLTestViewController ()

//@property (nonatomic, weak) UIView *nightView;

@end

@implementation ZLTestViewController



//%%%%%%%%%%%%%%%%%  tap %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#define MAX_DISTANCE_PX 22.0f

-(void)handleMapTap:(UIGestureRecognizer*)tap{
    
    MGLMapView *mapView = (MGLMapView *)tap.view;
    
    
    CGPoint tapPoint = [tap locationInView:mapView];
    
    
    
    
    NSLog(@"tapPoint = %f,%f",tapPoint.x, tapPoint.y);
    
    CLLocationCoordinate2D tapCoord = [mapView convertPoint:tapPoint toCoordinateFromView:mapView];
    
    
    NSString *area_subject = [NSString stringWithFormat:@"%@_%@", _area, _subject];
    NSSet *current_layers = [NSSet setWithObjects:area_subject, nil];
    
    //NSArray *feature_list =  [mapView visibleFeaturesAtPoint:tapPoint];
    NSArray *feature_list =  [mapView visibleFeaturesAtPoint:tapPoint inStyleLayersWithIdentifiers:current_layers];
    
    NSUInteger *element = [feature_list count];
   
   
    NSLog(@"layer --- %@", area_subject);
    NSLog(@"feature count %lu" ,element);
    
    
    
    
    
}// handle map tap method

//%%%%%%%%%%%%%%%%% End  tap %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    //########### init location ##########
    
    
    NSArray *city = [NSArray arrayWithObjects:@"city", @"33.65992448007282", @"-117.91505813598633", @"13", nil];
    
    NSArray *county = [NSArray arrayWithObjects:@"county", @"33.693495", @"-117.793350", @"11", nil];
    
    NSArray *Newport_Beach = [NSArray arrayWithObjects:@"Newport_Beach", @"33.616478", @"-117.875748", @"13", nil];
    NSArray *Santa_Monica = [NSArray arrayWithObjects:@"Santa_Monica", @"34.023143", @"-118.475275", @"14", nil];
    
    NSArray *Los_Angeles = [NSArray arrayWithObjects:@"Los_Angeles", @"34.043556504127444", @"-118.24928283691406", @"11", nil];
    NSArray *San_Francisco = [NSArray arrayWithObjects:@"San_Francisco", @"37.77559951996456", @"-122.41722106933594", @"12", nil];
    NSArray *New_York = [NSArray arrayWithObjects:@"New_York", @"40.753499070431374", @"-73.98948669433594", @"11", nil];
    NSArray *Chicago = [NSArray arrayWithObjects:@"Chicago", @"41.874673839758024", @"-87.63175964355469", @"11", nil];
    NSArray *Denver = [NSArray arrayWithObjects:@"Denver", @"39.74336227378035", @"-104.99101638793945", @"12", nil];
    NSArray *Los_Angeles_County = [NSArray arrayWithObjects:@"Los_Angeles_County", @"34.05607276338366", @"-118.26370239257812", @"10", nil];
    NSArray *New_York_Bronx = [NSArray arrayWithObjects:@"New_York_Bronx", @"40.85537053192496", @"-73.87687683105469", @"13", nil];
    NSArray *New_York_Brooklyn = [NSArray arrayWithObjects:@"New_York_Brooklyn", @"40.65433643720422", @"-73.95206451416016", @"13", nil];
    NSArray *New_York_Manhattan = [NSArray arrayWithObjects:@"New_York_Manhattan", @"40.764421348741976", @"-73.97815704345703", @"13", nil];
    NSArray *New_York_Queens = [NSArray arrayWithObjects:@"New_York_Queens", @"40.72280306615735", @"-73.79997253417969", @"13", nil];
    NSArray *New_York_Staten_Island = [NSArray arrayWithObjects:@"New_York_Staten_Island", @"40.60300547512703", @"-74.1353988647461", @"13", nil];
    NSArray *Arura = [NSArray arrayWithObjects:@"Arura", @"39.723296392333026", @"-104.84081268310547", @"13", nil];
    NSArray *Bakersfield = [NSArray arrayWithObjects:@"Bakersfield", @"39.818557296839344", @"-104.501953125", @"13", nil];
    NSArray *Baltimore = [NSArray arrayWithObjects:@"Baltimore", @"35.44808511462123", @"-118.78177642822266", @"13", nil];
    NSArray *Orlando = [NSArray arrayWithObjects:@"Orlando", @"39.90657598772841", @"-104.59259033203125", @"13", nil];
    NSArray *Palo_Alto = [NSArray arrayWithObjects:@"Palo_Alto", @"37.4426999532675", @"-122.15492248535156", @"13", nil];
    NSArray *Philadelphia = [NSArray arrayWithObjects:@"Philadelphia", @"37.49529038649112", @"-122.10411071777344", @"13", nil];
    NSArray *Portland = [NSArray arrayWithObjects:@"Portland", @"40.13794057716276", @"-74.95491027832031", @"13", nil];
    NSArray *San_Jose = [NSArray arrayWithObjects:@"San_Jose", @"45.58473142874248", @"-122.46803283691406", @"13", nil];
    NSArray *Seattle = [NSArray arrayWithObjects:@"Seattle", @"37.45469273789926", @"-121.82052612304688", @"13", nil];
    NSArray *Shoreline = [NSArray arrayWithObjects:@"Shoreline", @"47.75479043701335", @"-122.34392166137695", @"13", nil];
    NSArray *Stockton = [NSArray arrayWithObjects:@"Stockton", @"47.77936670249429", @"-122.27182388305664", @"13", nil];
    NSArray *Washington_DC = [NSArray arrayWithObjects:@"Washington_DC", @"38.063635376296816", @"-121.18932723999023", @"13", nil];
    
    
    
    NSMutableDictionary *area_info= [[NSMutableDictionary alloc]init];
    
    [area_info setObject:city forKey:@"city"];
    [area_info setObject:county forKey:@"county"];
    [area_info setObject:Newport_Beach forKey:@"Newport_Beach"];
    [area_info setObject:Santa_Monica forKey:@"Santa_Monica"];
    [area_info setObject:Los_Angeles forKey:@"Los_Angeles"];
    [area_info setObject:San_Francisco forKey:@"San_Francisco"];
    [area_info setObject:New_York forKey:@"New_York"];
    [area_info setObject:Chicago forKey:@"Chicago"];
    [area_info setObject:Denver forKey:@"Denver"];
    [area_info setObject:Los_Angeles_County forKey:@"Los_Angeles_County"];
    [area_info setObject:New_York_Bronx forKey:@"New_York_Bronx"];
    [area_info setObject:New_York_Brooklyn forKey:@"New_York_Brooklyn"];
    [area_info setObject:New_York_Manhattan forKey:@"New_York_Manhattan"];
    [area_info setObject:New_York_Queens forKey:@"New_York_Queens"];
    [area_info setObject:New_York_Staten_Island forKey:@"New_York_Staten_Island"];
    [area_info setObject:Arura forKey:@"Arura"];
    [area_info setObject:Bakersfield forKey:@"Bakersfield"];
    [area_info setObject:Baltimore forKey:@"Baltimore"];
    [area_info setObject:Orlando forKey:@"Orlando"];
    [area_info setObject:Palo_Alto forKey:@"Palo_Alto"];
    [area_info setObject:Philadelphia forKey:@"Philadelphia"];
    [area_info setObject:Portland forKey:@"Portland"];
    [area_info setObject:San_Jose forKey:@"San_Jose"];
    [area_info setObject:Seattle forKey:@"Seattle"];
    [area_info setObject:Shoreline forKey:@"Shoreline"];
    [area_info setObject:Stockton forKey:@"Stockton"];
    [area_info setObject:Washington_DC forKey:@"Washington_DC"];
    
    
    //.............. mapbox init ................
    
    
    
    // ----- satellite style -----
//    NSURL *styleURL = [MGLStyle satelliteStyleURLWithVersion:9];
//    
//    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds styleURL:styleURL];
   // MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.frame styleURL:styleURL];
    
    
    //----- custom style -------
    
    
    
//    NSMutableDictionary *style_url = [NSMutableDictionary dictionary];
//    
//    [style_url setObject:@"mapbox://styles/hoogw/ciqck140k0015g0nl5z1uq2v7" forKey:@"city_all"];
//    [style_url setObject:@"mapbox://styles/hoogw/ciqcn42gx003ebzm9v86elejr" forKey:@"city_address"];
//   // [style_url setObject:@"mapbox://styles/hoogw/ciqcn7oww001ag0nlbi22gj8i" forKey:@"city_parcels"];
//    [style_url setObject:@"mapbox://styles/hoogw/ciqcnhx0m003acrnfdg2be0v7" forKey:@"city_streets"];
//    
//    [style_url setObject:@"http://166.62.80.50:10/tilejson/city/city_parcels.json" forKey:@"city_parcels"];
//
//    
//    
//   // String _style_url = "http://166.62.80.50:10/tilejson/" + _area + "/" + area_subject + ".json";
//    
//    NSString *url_key = [NSString stringWithFormat:@"%@_%@", _area,_subject];
//    
    
    
    //NSURL *styleURL = [NSURL URLWithString:@"mapbox://styles/hoogw/ciqck140k0015g0nl5z1uq2v7"];
    //NSURL *styleURL = [NSURL URLWithString:[style_url objectForKey:url_key]];
    
    // mapbox_style_url.put("city_address","http://166.62.80.50:10/tilejson/city/city_address.json");
    // mapbox_style_url.put("city_parcels","http://166.62.80.50:10/tilejson/city/city_parcels.json");
   
    
    NSString *styleURL_string = [NSString stringWithFormat:@"http://166.62.80.50:10/tilejson/%@/%@_%@.json",_area,_area, _subject];
    NSURL *styleURL =[NSURL URLWithString:styleURL_string];

    
    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds
                                                   styleURL:styleURL];
    
    
    
    
    // Tint the ℹ️ button.
    mapView.attributionButton.tintColor = [UIColor whiteColor];
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // set the map’s center coordinates and zoom level
    NSArray *_init_loc = area_info[_area];
    
    //     NSString *lat=@"33.6599244";
    //     NSString *lng=@"-117.915058135";
    NSString *lat=[_init_loc objectAtIndex:1];
    NSString *lng=[_init_loc objectAtIndex:2];
    NSString *zoom =[_init_loc objectAtIndex:3];
    
    CGFloat latitude = [lat floatValue];
    CGFloat longitude = [lng floatValue];
    
    CLLocationCoordinate2D center_coord = CLLocationCoordinate2DMake(latitude, longitude);
    
    
    
    
    [mapView setCenterCoordinate:center_coord
                       zoomLevel:12
                        animated:NO];
    
    
    mapView.showsUserLocation = YES;
    
    
    
    
    
    
    // --------   add tap gesture ----------
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleMapTap:)];
    tap.cancelsTouchesInView = NO;
    tap.numberOfTapsRequired = 1;
    
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] init];
    tap2.cancelsTouchesInView = NO;
    tap2.numberOfTapsRequired = 2;
    
    [mapView addGestureRecognizer:tap2];
    [mapView addGestureRecognizer:tap];
    // [tap requireGestureRecognizerToFail:tap2]; // Ignore single tap if the user actually double taps
    
    
    // Not in use, this is another way
    //  [mapView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(mapTapped:)]];
    
    // --------- End tap gesture ---------------
    
    
    
    
    
    
    
    
    
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

//
//  ViewController.h
//  Geo
//
//  Created by Maiqui Cedeño on 3/17/16.
//  Copyright © 2016 maikytech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *lblLatitud;
@property (strong, nonatomic) IBOutlet UILabel *lblLongitud;
@property (strong, nonatomic) CLLocationManager *manager;   //Propiedad manager

@property (strong, nonatomic) IBOutlet MKMapView *mapa;

- (IBAction)comenzarUbicacion:(id)sender;

@end


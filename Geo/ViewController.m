//
//  ViewController.m
//  Geo
//
//  Created by Maiqui Cedeño on 3/17/16.
//  Copyright © 2016 maikytech. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)comenzarUbicacion:(id)sender
{
    //Esta clase se encarga de la localizacion
    self.manager = [[CLLocationManager alloc] init];
    
    //Filtro de notificaciones, de acuerdo a la distancia recorrida
    _manager.distanceFilter = 100;
    
    //Precision deseada
    _manager.desiredAccuracy = kCLLocationAccuracyThreeKilometers;
    
    //Asignamos un delegate al manager, en este caso somos nosotros mismos, la misma clase ViewController.
    _manager.delegate = self;
    
    //Comienza a actualizar la aplicacion
    [_manager startUpdatingLocation];
}

//Metodo que nos alerta que no se pudo ubicar
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    // Obtenemos las coordenadas de newLocation y las convertimos a NSString, las asignamos al text de los correspondientes labels.
    
    _lblLatitud.text = [[NSString alloc] initWithFormat:@"%f", newLocation.coordinate.latitude];
    
    _lblLongitud.text = [[NSString alloc] initWithFormat:@"%f", newLocation.coordinate.longitude];
    
    
    //Metodos que podemos utilizar del mapa.
    
    MKCoordinateRegion region;      //tipo estructura, no es un objeto, no lleva asterisco.
    
    //Asignacion de coordenadas en el mapa.
    region.center.latitude = newLocation.coordinate.latitude;
    region.center.longitude = newLocation.coordinate.longitude;
    
    //Cantidad de grados en que se centrara el mapa
    region.span.latitudeDelta = 0.01;
    region.span.longitudeDelta = 0.01;
    
    //metodo que asigna una region de manera animada al mapa.
    [_mapa setRegion:region animated:YES];
    
}
























@end

//
//  MarcadorPosicion.h
//  Geo
//
//  Created by Maiqui Cedeño on 3/17/16.
//  Copyright © 2016 maikytech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MarcadorPosicion : NSObject <MKAnnotation>   //Agregamos la propiedad MKAnnotation, la cual es una anotacin de MapKit.

@property CLLocationCoordinate2D coordenada;

@end

import 'package:geolocator/geolocator.dart';

class LocationController {


  static Future<Position> getCurrentLocation() async {

    //test Location Service
    await _testIfLocationServicesAreEnabled();

    //Check Permissions
    LocationPermission permission = await checkLocationPermission();

    //ERROR IF NOT PERMITTED
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }


    // Permissions are granted, and we can Get User Location
    return await Geolocator.getCurrentPosition();
  }


  static _testIfLocationServicesAreEnabled() async {
    bool serviceEnabled;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      //ASK TO ENABLE IT
      serviceEnabled =  await Geolocator.openLocationSettings();

      //IF SERVICE IS STILL DISABLED
      if(!serviceEnabled) return Future.error('Location services are disabled.');
    }
  }

  static Future<LocationPermission> checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    return permission;
  }
}
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyLocation {
  double latitude, longitude;

  Future<void> getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Constants {
  //strings
  static const appName = "Brush";
  static const breezeAPIKey = "6b16e1d42b454f6b8dfb371dfb46d462";

  //Lists
//  static const tabs = List(TabItem(icon: Icons.home));

  //other
  static const CameraPosition defaultPosition = CameraPosition(
      target: LatLng(-33.470787, 150.162418), bearing: 270, zoom: 13.0, tilt: 0);


}
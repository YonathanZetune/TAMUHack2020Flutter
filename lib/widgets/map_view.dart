import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamu_hack_2020/models/map_info.dart';
import 'package:tamu_hack_2020/utilities/constants.dart';

class MapView extends StatelessWidget {
  static final Completer<GoogleMapController> mController = Completer();

  @override
  Widget build(BuildContext context) {
    var mapInfo = Provider.of<MapInfo>(context);

    return Container(
      height: MediaQuery.of(context).size.height - 0,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.hybrid,
        myLocationButtonEnabled: false,
        zoomGesturesEnabled: true,
        rotateGesturesEnabled: true,
        scrollGesturesEnabled: true,
        initialCameraPosition: Constants.defaultPosition,
//        markers: allMarkers,// TODO: addmarkers
        onMapCreated: (GoogleMapController controller) async {
//          SharedPreferences prefs = await SharedPreferences.getInstance();
//          controller.setMapStyle(mapInfo.mapStyle);
          mController.complete(controller);
        },
      ),
    );
  }
}

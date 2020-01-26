import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamu_hack_2020/models/map_info.dart';
import 'package:tamu_hack_2020/utilities/requests.dart';
import 'package:tamu_hack_2020/widgets/map_view.dart';

class HomeFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MapInfo>(context, listen: false);

    return Positioned(
      bottom: 30,
      right: 20,
      child: FloatingActionButton(
        child: Icon(Icons.home),
        tooltip: "Return to home",
        onPressed: () async {
          // TODO: implement return to home functionality
          MapView.setFireMarkers(await Requests.getFires(),
              context); // = MapView.//await Requests.getFires();
        },
      ),
    );
  }
}

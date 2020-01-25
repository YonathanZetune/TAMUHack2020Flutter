import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamu_hack_2020/models/map_info.dart';


class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new MapInfo(),
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}

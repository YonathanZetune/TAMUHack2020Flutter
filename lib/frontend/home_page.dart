import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamu_hack_2020/models/map_info.dart';
import 'package:tamu_hack_2020/widgets/home_fab.dart';
import 'package:tamu_hack_2020/widgets/map_view.dart';

class MyHome extends StatelessWidget {
  static List<TabItem> tabs = new List<TabItem>();

  @override
  Widget build(BuildContext context) {
    tabs = new List<TabItem>();
    tabs.add(TabItem(title: "Map", icon: Icons.map));
    tabs.add(TabItem(title: "Report", icon: Icons.add_location));
    tabs.add(TabItem(title: "List", icon: Icons.list));

    return ChangeNotifierProvider(
      create: (context) => MapInfo(),
      child: Container(
        child: Scaffold(
          bottomNavigationBar: ConvexAppBar(
            items: tabs,
            backgroundColor: Colors.deepOrange,
            style: TabStyle.fixedCircle,
          ),
//          appBar: AppBar(
//            backgroundColor: Colors.deepOrange,
//          ),
          body: Stack(
            children: <Widget>[
              MapView(),
              HomeFAB()
            ],
          ),
        ),
      ),
    );
  }
}

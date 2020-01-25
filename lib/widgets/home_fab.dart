import 'package:flutter/material.dart';

class HomeFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.home),
      tooltip: "Return to home",
      onPressed: () async {
        // TODO: implment return to home functionality
      },
    );
  }
}

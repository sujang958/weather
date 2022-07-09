import 'package:Weather/widgets/defaultContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Center(
        child: Text("IH"),
      ),
    );
  }
}

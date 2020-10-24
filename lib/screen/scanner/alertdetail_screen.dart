import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';

class AlertDetailScreen extends StatefulWidget {
  @override
  _AlertDetailScreenState createState() => _AlertDetailScreenState();
}

class _AlertDetailScreenState extends State<AlertDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: StyledScaffold(
          image: "assets/images/img-scanner.svg",
          title: "SLXH-07",
          subTitle: "Alerta",
          backbutton: true,
          child: Container(width: _size.width, alignment: Alignment.center),
        ),
      ),
    );
  }
}

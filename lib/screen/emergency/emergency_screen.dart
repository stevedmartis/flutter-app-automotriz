import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';

class EmergencyScreen extends StatefulWidget {
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _size.height,
          width: _size.width,
          color: Colors.red,
          child: Column(
            children: [
              StyledRedButton(
                label: "Cancelar",
                press: () => {Navigator.pop(context)},
              )
            ],
          ),
        ),
      ),
    );
  }
}

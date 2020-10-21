import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/car_selector.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: StyledAppBar(
          child: Container(
            width: _size.width,
            alignment: Alignment.center,
            child: Column(
              children: [
                CarSelector(
                  width: _size.width * 0.75,
                  carModel: "Audi A5",
                  carId: "SLXH-07",
                ),
                VSpace(15),
                MenuSelector(
                  width: _size.width * 0.75,
                ),
                VSpace(15),
                Container(
                  alignment: Alignment.center,
                  width: 292,
                  height: 50,
                  decoration: new BoxDecoration(color: Color(0xffff0707), borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Llamada Emergencia",
                    style: TextStyle(
                      fontFamily: 'GTWalsheimPro',
                      color: Color(0xffffffff),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

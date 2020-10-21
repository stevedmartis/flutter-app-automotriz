import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/car_selector.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

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
        child: StyledScaffold(
          image: "assets/images/img-home.svg",
          title: "Hola Juan Francisco!",
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
                  options: [
                    OptionSelector(
                      svgIcon: "location.svg",
                      title: "Ubicaciones",
                      onpress: () => {Navigator.of(context).pushNamed('/position')},
                    ),
                    OptionSelector(
                      title: "Scanner",
                      svgIcon: "scanner.svg",
                      onpress: () => {Navigator.of(context).pushNamed('/scanner')},
                    ),
                    OptionSelector(
                      title: "Acciones",
                      svgIcon: "actions.svg",
                      onpress: () => {Navigator.of(context).pushNamed('/action')},
                    ),
                  ],
                ),
                VSpace(15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/emergency');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 292,
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Color(0xffff0707),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Llamada Emergencia",
                      style: TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        color: Color(0xffffffff),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
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

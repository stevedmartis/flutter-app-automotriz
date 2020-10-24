import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/car_selector.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

//TODO https://pub.dev/packages/circular_menu
class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // FirebaseMessaging _firebaseMessaging = FirebaseMessaging();


  @override
  void initState(){
    super.initState();
    // _firebaseMessaging.configure(
    //   onMessage: (message) async {
    //     print("-------> $message");
    //   },
    //   onResume: (message) async {
    //     print("-------> $message");
    //   },
    //   onLaunch: (message) async {},
    // );
  }

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
                StyledButton(
                  label: 'Llamada Emergencia',
                  width: _size.width * 0.75,
                  backgroundColor: Color(0xffff0707),
                  press: () => {
                    Navigator.of(context).pushNamed('/emergency'),
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

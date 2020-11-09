import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/agenda_selector.dart';
import 'package:trinoapp/_internal/controls/option_agenda_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';
import 'package:trinoapp/screen/screens.dart';

//TODO https://pub.dev/packages/circular_menu
class AgendarScreen extends StatefulWidget {
  AgendarScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AgendarScreenState createState() => _AgendarScreenState();
}

class _AgendarScreenState extends State<AgendarScreen> {
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
          image: "assets/images/img-scanner.svg",
          title: "SLXH-07",
          subTitle: "Agendar",
          backbutton: true,
          child: Container(
            width: _size.width,
            alignment: Alignment.center,
            child: Column(
              children: [
                AgendaSelector(
                
                  width: _size.width * 0.80,
                  
                  options: [
                    OptionAgendaSelector(
                      svgIcon: "location.svg",
                      title: "Ver Ubicacion actual",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                                        OptionAgendaSelector(
                      svgIcon: "location.svg",
                      title: "Ver Ubicacion dsfsd",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                       OptionAgendaSelector(
                      svgIcon: "location.svg",
                      title: "Ver Ubicacion actual",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                  ],
                ),
                VSpace(20),
                StyledButton(
                  label: "Agendar",
                  borderColor: Colors.transparent,
                  press: () => {Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false)},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

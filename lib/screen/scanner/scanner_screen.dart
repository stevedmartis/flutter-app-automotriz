import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

class ScannerScreen extends StatefulWidget {
  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: StyledScaffold(
          image: "assets/images/img-scanner.svg",
          title: "SLXH-07",
          subTitle: "Niveles",
          backbutton: true,
          child: Container(
            width: _size.width,
            alignment: Alignment.center,
            child: Column(
              children: [
                StyledOdometer(
                  distance: 2501,
                ),
                VSpace(15),
                MenuSelector(
                  width: _size.width * 0.80,
                  options: [
                    OptionSelector(
                      svgIcon: "update-values.svg",
                      title: "Actualizar Valores",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "levels.svg",
                      title: "Niveles",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/levels'),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "notifications.svg",
                      title: "Alertas",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/notification'),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "maintainance-history.svg",
                      title: "Historial Mantencion",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/maintenanceHistory'),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "contact-shop.svg",
                      title: "Agendar Mantencion",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/maintenanceSchedule'),
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

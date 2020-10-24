import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';
import 'package:trinoapp/constants.dart';

class LevelScreen extends StatefulWidget {
  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
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
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StyledOdometer(
                  distance: 2501,
                ),
                VSpace(15),
                MenuSelector(
                  width: _size.width * 0.80,
                  options: [
                    OptionSelector(
                      svgIcon: "fuel-level.svg",
                      title: "Combustible",
                      statusColor: statusOkColor,
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "oil-level.svg",
                      title: "Aceite",
                      statusColor: statusOkColor,
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "cooler-level.svg",
                      title: "Refrigerante",
                      statusColor: statusProblemColor,
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "tyre-presure.svg",
                      title: "Presion Neumaticos",
                      statusColor: statusWarningColor,
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "battery-status.svg",
                      title: "Estado Bateria",
                      statusColor: statusWarningColor,
                      onpress: () => {
                        print("Actualizar valores"),
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

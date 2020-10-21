import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

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
            alignment: Alignment.center,
            child: Column(
              children: [
                MenuSelector(
                  width: _size.width * 0.80,
                  options: [
                    OptionSelector(
                      svgIcon: "fuel-level.svg",
                      title: "Combustible",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "oil-level.svg",
                      title: "Aceite",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "cooler-level.svg",
                      title: "Refrigerante",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "tyre-presure.svg",
                      title: "Presion Neumaticos",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "battery-status.svg",
                      title: "Estado Bateria",
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

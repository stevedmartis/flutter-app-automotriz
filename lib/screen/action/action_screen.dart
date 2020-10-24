import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

class ActionScreen extends StatefulWidget {
  @override
  _ActionScreenState createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: StyledScaffold(
          image: "assets/images/img-actions.svg",
          title: "SLXH-07",
          subTitle: "ACCIONES",
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
                      svgIcon: "security-system.svg",
                      title: "Sistema Seguridad",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "verify-system.svg",
                      title: "Verificacion Sistema",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                    OptionSelector(
                      svgIcon: "system-status.svg",
                      title: "Estado Sistema",
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

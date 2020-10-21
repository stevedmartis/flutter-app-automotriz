import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/styled_scaffold.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

class MaintenanceScheduleScreen extends StatefulWidget {
  @override
  _MaintenanceScheduleScreenState createState() => _MaintenanceScheduleScreenState();
}

class _MaintenanceScheduleScreenState extends State<MaintenanceScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: StyledScaffold(
          image: "assets/images/img-scanner.svg",
          title: "SLXH-07",
          subTitle: "Agendar Mantencion",
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
                      svgIcon: "maintainance-history.svg",
                      title: "Mantencion 1",
                      onpress: () => {
                        print("Actualizar valores"),
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

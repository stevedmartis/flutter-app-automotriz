import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: StyledScaffold(
          image: "assets/images/img-scanner.svg",
          title: "SLXH-07",
          subTitle: "Alertas",
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
                      svgIcon: "notification-msg.svg",
                      title: "Titulo Mensaje",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/detailAlert')
                      },
                    ),
                    OptionSelector(
                      svgIcon: "notification-msg.svg",
                      title: "Titulo Mensaje",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/detailAlert')
                      },
                    ),
                    OptionSelector(
                      svgIcon: "notification-msg-alert.svg",
                      title: "Titulo Mensaje",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/detailAlert')
                      },
                    ),
                    OptionSelector(
                      svgIcon: "notification-msg-alert.svg",
                      title: "Titulo Mensaje",
                      onpress: () => {
                        Navigator.of(context).pushNamed('/scanner/detailAlert')
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

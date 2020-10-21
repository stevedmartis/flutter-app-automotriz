import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/styled_scaffold.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';

class ActionScreen extends StatefulWidget {
  @override
  _ActionScreenState createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return StyledScaffold(
      image: "assets/images/img-actions.svg",
      title: "SLXH-07",
      subTitle: "Acciones",
      backbutton: true,
      child: Container(
        width: _size.width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("hello"),
            MenuSelector(
              width: _size.width * 0.75,
            ),
          ],
        ),
      ),
    );
  }
}

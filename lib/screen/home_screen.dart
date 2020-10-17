import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';

import '../_internal/component/common/styled_appbar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StyledAppBar(
          child: Column(
            children: [
              Text('hell'),
              Text('hell'),
              Text('hell'),
            ],
          ),
        ),
      ),
    );
  }
}

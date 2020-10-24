import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'dart:async';

class EmergencyScreen extends StatefulWidget {
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  Timer _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            setState(() {
              _start = _start - 1;
            });
          }
        },
      ),
    );
  }

  @override
  void initState() {
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _size.height,
          width: _size.width,
          color: Color(0xffff0715),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VSpace(5),
              Text(
                "Has iniciado llamada\nde emergencia, en",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  color: Color(0xffffffff),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                "$_start",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  color: Color(0xffffffff),
                  fontSize: 260,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  children: [
                    TextSpan(
                      text: "Segundos habrás notificado a:\n\n",
                      style: TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextSpan(
                      text: "Juan Perez\n\nPedro Gutierrez\n\nCentro Soporte TrinoLink",
                      style: TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              VSpace(5),
              StyledButton(
                width: _size.width * 0.75,
                label: "También Bloquear Vehículo",
                fontColor: Color(0xffff0715),
                backgroundColor: Colors.white,
                press: () => {Navigator.pop(context)},
              ),
              _start != 0 ?
              StyledButton(
                width: _size.width * 0.75,
                label: "Cancelar Acción",
                backgroundColor: Color(0xffff0715),
                borderWidth: 2,
                press: () => {Navigator.pop(context)},
              ) : Container(),
              _start == 0 ?  StyledButton(
                width: _size.width * 0.75,
                label: "Volver",
                backgroundColor: Color(0xffff0715),
                borderWidth: 2,
                press: () => {Navigator.pop(context)},
              ) : Container(),
              RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  children: [
                    TextSpan(
                      text: "Trino",
                      style: TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        color: Color(0xff4b3232),
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextSpan(
                      text: "Link",
                      style: TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        color: Color(0xffffffff),
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}

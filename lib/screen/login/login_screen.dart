import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffcf4bf9),
                Color(0xffffffff),
              ],
              stops: [0, 1],
              begin: Alignment(-0.00, -1.00),
              end: Alignment(0.00, 1.00),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WebsafeSvg.asset("assets/images/img-login.svg"),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  color: Color(0xffffffff),
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              StyledTextBox(
                hintText: 'User',
              ),
              StyledTextBox(
                hintText: 'Password',
              ),
              StyledButton(
                label: "Enter",
                borderColor: Colors.transparent,
                press: () => {
                  Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false)
                },
              ),
              Text(
                "Cancel",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  color: Color(0xff418cfa),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
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
                        color: Color(0xff418cfa),
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

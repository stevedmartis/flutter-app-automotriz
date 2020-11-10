import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: _size.height * 0.99,
          padding: EdgeInsets.only(top: 50),
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
              
              Container(
                width: 340,
                height: 300,
                child: WebsafeSvg.asset("assets/images/img-login.svg"),
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  color: Color(0xffffffff),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              StyledTextBox(
                hintText: 'User',
                prefixIcon: Container(
                  height: 20,
                  width: 20,
                  child: Icon(
                    MdiIcons.accountCircleOutline,
                    size: 20,
                    color:  Color(0xff418cfa),
                  ),
                ),
                height: 40,
              ),
              StyledTextBox(
                hintText: 'Password',
                height: 40,
                obstureText: true,
                prefixIcon: Container(
                  height: 20,
                  width: 20,
                  child: Icon(
                    MdiIcons.lockOutline,
                    size: 20,
                    color:  Color(0xff418cfa),
                  ),
                ),
              ),
              StyledButton(
                label: "Enter",
                borderColor: Colors.transparent,
                press: () => {Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false)},
              ),
              Text(
                "Or enter with",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  color: Color(0xff418cfa),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledCircularButton(
                    height: 40,
                    width: 40,
                    backgroundColor: Colors.white,
                    borderColor: Color(0xff4967AF),
                    borderWidth: 3.0,
                    icon: FaIcon(
                      FontAwesomeIcons.facebookF,
                      size: 20,
                      color: Color(0xff4967AF),
                    ),
                  ),
                  HSpace(15),
                  StyledCircularButton(
                    height: 40,
                    width: 40,
                    backgroundColor: Colors.white,
                    borderColor: Color(0xffE73D3A),
                    borderWidth: 3.0,
                    icon: FaIcon(
                      FontAwesomeIcons.googlePlusG,
                      size: 20,
                      color: Color(0xffE73D3A),
                    ),
                  ),
                  HSpace(15),
                  StyledCircularButton(
                    height: 40,
                    width: 40,
                    backgroundColor: Colors.white,
                    borderColor: Color(0xff35AFE0),
                    borderWidth: 3.0,
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 20,
                      color: Color(0xff35AFE0),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: 
                () => {Navigator.of(context).pushNamedAndRemoveUntil('/register', (route) => false)},
                child: Text(
                  "Crear mi cuenta",
                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    color: Color(0xff418cfa),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              StyledLogo(),
            ],
          ),
        ),
      ),
    );
  }
}

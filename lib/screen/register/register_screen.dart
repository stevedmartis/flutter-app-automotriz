import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:websafe_svg/websafe_svg.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
         Center(
        
        child: Stack(
          children: [
            Positioned(
           
              child: Container(
                width:_size.width - 90 ,
                height: _size.width - 90,
                child: WebsafeSvg.asset("assets/images/intro-background.svg"),
              ),
            ),
            Positioned(
              top: 50,
              left: 60,
              child: Container(
                
                width: _size.width - 200,
                height: _size.width - 200,
                child:  WebsafeSvg.asset("assets/images/img-lets-get-started.svg"),
              ),
            ),
          ],
        ),
      ),
              Text(
                  "Crea una nueva cuenta!",
                  textAlign: TextAlign.center,
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
                label: "Entrar",
                borderColor: Colors.transparent,
                press: () => {Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false)},
              ),
              Text(
                "O entra con: ",
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
                onTap: () => {Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false)},
                                child: Text(
                  "Ir a iniciar sesión",
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



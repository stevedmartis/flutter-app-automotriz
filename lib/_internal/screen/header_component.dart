import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/styled_circularbutton.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:websafe_svg/websafe_svg.dart';

//"assets/images/header-background.png"
//"Hola Juan Francisco!"
//"assets/images/img-home.svg"
class HeaderComponent extends StatelessWidget {
  final String icon;
  final String image;
  final String title;
  final bool backbutton;

  const HeaderComponent({
    Key key,
    this.icon,
    this.image,
    this.title,
    this.backbutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: 260,
      width: _size.width,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/header-background.png"),
            fit: BoxFit.cover,
          )),
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (backbutton)
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        print('hello');
                        Navigator.pop(context);
                      },
                      child: StyledCircularButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 14,
                          color: Color(0xff418cfa),
                        ),
                      ),
                    ),
                  ),
                HSpace(10),
                Text(title,
                    style: TextStyle(
                      fontFamily: 'GTWalsheimPro',
                      color: Color(0xff418cfa),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    )),
              ],
            ),
            WebsafeSvg.asset(image),
          ],
        ),
      ),
    );
  }
}

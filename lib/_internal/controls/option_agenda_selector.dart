import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class OptionAgendaSelector extends StatelessWidget {
  final String svgIcon;
  final String title;
  final Function onpress;
  final Color statusColor;

  const OptionAgendaSelector({
    Key key,
    this.svgIcon,
    this.title,
    this.onpress,
    this.statusColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 15,
        top: 0,
        right: 10,
        bottom: 0,
      ),
      child: GestureDetector(
        onTap: () => {
          onpress(),
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: WebsafeSvg.asset(
                "assets/icons/" + svgIcon,
              ),
            ),
            Container(
              height: 50,
              width: 200,

              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: 
                Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,                  children: [
                    Text('Sucursal agendada', 
                      style: TextStyle(
                      color: Color(0xff427EF8),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    fontFamily: 'GTWalsheimPro',
                      fontStyle: FontStyle.normal,
                    
                      ),
                      
                    ),
                      
                    Text('Lorem ipsum', 
                    style: TextStyle(
                      color: Color(0xff3776F8),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'GTWalsheimPro',
                      fontStyle: FontStyle.normal,
                      ),

                    ),

                  ],

                ),
                decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: new Border.all(
                    color: Color(0xff3374F8),
                    width: 2.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffBFCFFA),
                
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../onbordimg.dart';

class Responsivethree extends StatelessWidget {
  const Responsivethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: <Widget>[
        LayoutBuilder(builder: (context, constraints) {
          double screenwidth = MediaQuery.of(context).size.width;
          double screenheight = MediaQuery.of(context).size.height;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Center(
                    child: Image.asset(
                      Onboarding_Images.img3,
                      width: screenwidth * 0.82,
                      height: screenheight * 0.82,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        'Download now!',
                        style: GoogleFonts.poppins(
                            fontSize: screenwidth * 0.060,
                            fontWeight: FontWeight.w700),
                      ),
                      Center(
                        heightFactor: 2.900,
                        child: Text(
                          'You can  follow me if you wanted comment\n'
                          '                   on any to get some freebies',
                          maxLines: 2,
                          style: GoogleFonts.lato(
                              height: 1.5,
                              color: const Color(0xff747474),
                              fontSize: screenwidth * 0.045),
                        ),
                      )
                    ],
                  ))
            ],
          );
        })
      ],
    )));
  }
}

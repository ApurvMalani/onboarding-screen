import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive/onbordimg.dart';

class Responsivetwo extends StatelessWidget {
  const Responsivetwo({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Center(

                    child: Image.asset(
                      Onboarding_Images.img2,
                      width: screenwidth * 0.8,
                      height: screenheight * 0.8,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(

                height: screenheight * 0.03,
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        'Design Template uploads\n'
                        '             Every Tuesday!',
                        style: GoogleFonts.poppins(
                            fontSize: screenwidth * 0.060,
                            fontWeight: FontWeight.w700),
                      ),
                      Center(
                        heightFactor: 1.8,
                        child: Text(
                          'Make sure to take a look my uplab\n'
                          '              profile every tuesday',
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


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive/Responsive_Onboarding/responsive2.dart';
import 'package:responsive/Responsive_Onboarding/responsive3.dart';
import 'package:responsive/onbordimg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(controller: _pageController, children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {

                  double screenwidth = MediaQuery.of(context).size.width;
                  double screenheight = MediaQuery.of(context).size.height;

                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Center(
                              child: Image.asset(Onboarding_Images.img1,
                                  width: screenwidth * 0.8,
                                  height: screenheight * 0.8,
                                  alignment: Alignment.topCenter),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(children: [
                            Text(
                              'Welcome to Surf.',
                              style: GoogleFonts.poppins(
                                  fontSize: screenwidth * 0.060,
                                  fontWeight: FontWeight.w700),
                            ),
                            Center(
                              heightFactor: 1.6,
                              child: Text(
                                'I provide essential stuff for your\n        ui designs every tuesday!',
                                maxLines: 2,
                                style: GoogleFonts.lato(
                                    height: 1.5,
                                    /*   height: screenwidth * 0.0027,*/
                                    color: const Color(0xff747474),
                                    fontSize: screenwidth * 0.045),
                              ),
                            )
                          ]),
                        ),
                      ]);
                },
              ),
              const Responsivetwo(),
              const Responsivethree()
            ]),
            Align(
              alignment: const Alignment(0, 0.80),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () => _pageController.jumpToPage(2),
                        child: Text(
                          'Skip',
                          style: GoogleFonts.lato(
                              color: Colors.grey,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.060,
                              fontWeight: FontWeight.w400),
                        )),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const WormEffect(
                          dotWidth: 10,
                          dotHeight: 10,
                          activeDotColor: Colors.black,
                          dotColor: Color(0xffd8d7d5),
                          type: WormType.underground),
                    ),
                    TextButton(
                        onPressed: ()=>_pageController.nextPage(duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut),
                        child: Text(
                          'Next',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.060,
                              fontWeight: FontWeight.w400),
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

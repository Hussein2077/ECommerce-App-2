
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CustomDotControllerOnBoarding.dart';
import 'controller/onboarding_controller.dart';
import 'custombotton.dart';
import 'customslider.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImplement()) ;
    return Scaffold(
        backgroundColor:const Color(0xffF8F9FD),
        body: SafeArea(
          child: Column(children: [
             const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}
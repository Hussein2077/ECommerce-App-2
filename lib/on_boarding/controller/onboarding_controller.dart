import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:graduation_project/utilities/routes.dart';

import '../datsource/static.dart';

abstract class OnBoardingController extends GetxController {
  next();

  onPageChanged(int i);
}

class OnBoardingControllerImplement extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;

  @override
  next() {
    currentPage++;

  if(currentPage>onBoardingList.length-1){

Get.toNamed(AppRoutes.landingPageRoute);

  }else{  pageController.animateToPage(currentPage,
      duration: const Duration(microseconds: 400), curve: Curves.easeIn);
  }
  }

  @override
  onPageChanged(int i) {
    currentPage = i;
    update();
  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }
}

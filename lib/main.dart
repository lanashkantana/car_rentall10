
import 'package:car_rental/car_rental_app.dart';
import 'package:car_rental/core/helper/constans.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/helper/shared_pref_helper.dart';
import 'package:car_rental/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  //  setupGetIt();
    WidgetsFlutterBinding.ensureInitialized();
    // await checkIfLoggedInUser();
     await ScreenUtil.ensureScreenSize();
  runApp(CarRentalApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
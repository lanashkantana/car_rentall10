
import 'package:car_rental/core/routing/app_router.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CarRentalApp extends StatelessWidget {
  final AppRouter appRouter;
  const CarRentalApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
      designSize: const Size(429.99, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
      
      theme: ThemeData(
     scaffoldBackgroundColor:AppColors.mainGray,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
          
        ),
      ),
     
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}


import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/features/auth_screen/Forgot_password/ui/reset_password.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/login_screen.dart';
import 'package:car_rental/features/auth_screen/verfication_number/verification_number.dart';
import 'package:car_rental/features/auth_screen/verify_password/ui/verify_password.dart';
import 'package:car_rental/features/onBoarding_screen/widget/on_boarding_screen_body.dart';
import 'package:car_rental/features/auth_screen/sign_up_screen/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Routes.verifyPassword:
        return MaterialPageRoute(builder: (_) => VerifyPassword());
      case Routes.verificationNumber:
        return MaterialPageRoute(builder: (_) => VerificationNumber());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPassword());
     

      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //     builder:
      //         (_) => BlocProvider(
      //           create: (BuildContext context) => getIt<SignUpCubit>(),
      //           child: const SignupScreen(),
      //         ),
      //   );

      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder:
      //         (_) => BlocProvider(
      //           create: (BuildContext context) => getIt<LoginCubit>(),
      //           child: const LoginScreen(),
      //         ),
      //   );

      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder:
      //         (_) => BlocProvider(
      //           create: (BuildContext context) => HomeCubit(getIt())..emitGetSpecialization(),
      //           child: HomeScreen(),
      //         ),
      //   );

      default:
        return null;
      // return MaterialPageRoute(
      //   builder: (_) => Scaffold(
      //     body: Center(
      //       child: Text("No Route Defined for ${settings.name}"),
      //     ),
      //   ),
      // );
    }
  }
}

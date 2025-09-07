import 'package:car_rental/core/helper/app_assets.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:car_rental/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    List images = [AppAssets.onBoardingImage1, AppAssets.onBoardingImage2];

    return Scaffold(

      body:  PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: images.length,
        controller: controller,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              // الخلفية
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
      
              // المحتوى فوق الخلفية
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 55,horizontal:20),
                    child: CircleAvatar(
                      
                      radius: 32,
                      backgroundColor: AppColors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(AppAssets.carIcon,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  index == 1
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 38.h,horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             
                              Text(
                                "Lets Start\nA New Experience\nWith Car rental.",
                             
                                style: AppStyles.font40SemiBold.copyWith(color: AppColors.white,
                                
                                
                                
                                ),
                                
                              ),
                              280.verticalSpace,
                            

                           
                              Center(
                                child: Text(
                                  "Discover your next adventure with Qent.we’re here to\nprovide you with a seamless car rental experience.\nLet’s get started on your journey.",
                                                    
                                  style: AppStyles.font16SemiBold.copyWith(
                                    fontWeight: AppFontWeight.regular,
                                    color: AppColors.white
                                  ),
                                ),
                              ),
                              25.verticalSpace,
                             
                              Center(
                                child: SmoothPageIndicator(
                                  controller: controller,
                                  count: images.length,
                                  effect: const ExpandingDotsEffect(
                                    dotWidth: 12,
                                    dotHeight: 8,
                                    dotColor: AppColors.white,
                                    activeDotColor: AppColors.graylow,
                                    expansionFactor: 2,
                                    spacing: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : SizedBox.shrink(),
                    Spacer(),
                    
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AppTextButton(
                      onPressed: () {
                        if (index < images.length - 1) {
                          controller.animateToPage(
                            index + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          // debugPrint("Finish onboarding");
                          context.pushReplacementNamed(Routes.loginScreen);
                        }
                      },
                                      
                    child: Text("Get Started",
                     
                      style: AppStyles.font16SemiBold.copyWith(
                        
                        fontWeight: AppFontWeight.bold,
                        color:AppColors.white),
                      ),
                    ),
                  ),
                35.verticalSpace,
                ],
              ),
            
            ],
          );
        },
        
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app_techidaara/constants/colors.dart';
import 'package:weather_app_techidaara/ui/screens/city_selection_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landing_screen';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 37, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                      fontSize: 57,
                      color: Color(0xff1D1D1D),
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "\nlet's set you",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyColor,
                        ),
                      ),
                      TextSpan(
                        text: '\nweather..',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Image.asset('assets/images/landing_image.png'),
              const Spacer(),

              ///two buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color(0xffE0E0E0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Select Current Location',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, CitySelectionScreen.routeName);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        height: 65,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Select City',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

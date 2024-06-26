import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:goluu_app/route/route_name.dart';
import 'package:goluu_app/utils/color.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(RoutesName.signup);
    });
  }

  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Welcome",
          textStyle: const TextStyle(
              color: ColorResource.darkPink,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        subtitle: StepperText(
          "Register and enter your details to initiate the interaction.",
          textStyle: const TextStyle(color: ColorResource.titleText, fontSize: 14),
        ),
        iconWidget: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: ColorResource.green,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: CircleAvatar(
            backgroundColor: ColorResource.darkBlue,
            radius: 100,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "assets/images/welcome.png",
                height: 50,
                width: 50,
              ),
            ),
          ),
        )),
    StepperData(
        title: StepperText(
          "Rediscover",
          textStyle: TextStyle(
              color: ColorResource.darkPink,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        subtitle: StepperText(
          "Rediscover yourself, your stocks, your company/business, your cryptos, and your name vibration with our integrated in-depth Master Chart based on Numerology, Astrology, and Feng Shui.",
          textStyle: TextStyle(color: ColorResource.titleText, fontSize: 14),
        ),
        iconWidget: Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundColor: ColorResource.darkPink,
            radius: 100,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "assets/icons/rediscover.png",
                height: 50,
                width: 50,
              ),
            ),
          ),
          decoration: const BoxDecoration(
              color: ColorResource.darkPink,
              borderRadius: BorderRadius.all(Radius.circular(100))),
        )),
    StepperData(
        title: StepperText(
          "Consult",
          textStyle: TextStyle(
              color: ColorResource.darkPink,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        subtitle: StepperText(
          "Ask our expert team via in-app or online consulatation request.",
          textStyle: TextStyle(color: ColorResource.titleText, fontSize: 14),
        ),
        iconWidget: Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundColor: ColorResource.darkBlue,
            radius: 100,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "assets/icons/consult.png",
                height: 50,
                width: 50,
              ),
            ),
          ),
          decoration: const BoxDecoration(
              color: ColorResource.green,
              borderRadius: BorderRadius.all(Radius.circular(100))),
        )),
    StepperData(
        title: StepperText(
          "Transform",
          textStyle: TextStyle(
              color: ColorResource.darkPink,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        subtitle: StepperText(
          "Enjoy free access to videos, daily posts, predictions, and more.",
          textStyle: TextStyle(color: ColorResource.titleText, fontSize: 14),
        ),
        iconWidget: Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundColor: ColorResource.darkPink,
            radius: 100,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "assets/icons/transform.png",
                height: 50,
                width: 50,
              ),
            ),
          ),
          decoration: const BoxDecoration(
              color: ColorResource.green,
              borderRadius: BorderRadius.all(Radius.circular(100))),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return Scaffold(
      backgroundColor: ColorResource.dimWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: height * .15),
                Text(
                  "Goluu Divination",
                  style: TextStyle(
                    color: ColorResource.darkPink,
                    fontSize: width * .08,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Enter a realm of cosmic wisdom with ",
                            style: TextStyle(color: ColorResource.black),
                          ),
                          TextSpan(
                            text: "Goluu Divination",
                            style: TextStyle(
                              color: ColorResource.darkPink,
                            ),
                          ),
                          TextSpan(
                            text:
                                ", the pioneering mobile and desktop app available on all platforms (iOS and Android) that offers integrated insights into Astrology, Numerology, and Vastu (Indian Feng Shui).",
                            style: TextStyle(color: ColorResource.black),
                          ),
                        ],
                      ),
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: AnotherStepper(
                    stepperList: stepperData,
                    stepperDirection: Axis.vertical,
                    iconWidth: 80,
                    iconHeight: 80,
                    activeBarColor: ColorResource.darkPink,
                    inActiveBarColor: ColorResource.grey,
                    inverted: false,
                    verticalGap: 20,
                    activeIndex: 5,
                    barThickness: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

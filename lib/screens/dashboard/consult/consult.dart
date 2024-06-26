import 'package:flutter/material.dart';
import 'package:goluu_app/utils/color.dart';
import '../../../route/route_name.dart';
import '../../../widgets/custom_dialog.dart';

class ConsultScreen extends StatefulWidget {
  const ConsultScreen({Key? key}) : super(key: key);

  @override
  State<ConsultScreen> createState() => _ConsultScreenState();
}

class _ConsultScreenState extends State<ConsultScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: width,
                        decoration: BoxDecoration(
                          color: ColorResource.darkBlue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 35),
                            Container(
                              decoration: BoxDecoration(
                                color: ColorResource.darkPink,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Personalised Horoscope for You - May 20, 2024",
                                  style: TextStyle(color: ColorResource.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "As per your date of birth, ",
                                        style: TextStyle(color: ColorResource.white),
                                      ),
                                      TextSpan(
                                        text:
                                            "Personal Day is 5(Number Five or Mercury Planet Energy), ",
                                        style: TextStyle(
                                          color: ColorResource.yellow,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            ", So it's time to rock on with change, freedom & adventure. Investment in shares & assets will be worth the decision today. Be active and take your time throughout the day.\n",
                                        style: TextStyle(color: ColorResource.white),
                                      ),
                                      TextSpan(
                                        text: "Personal Day Remedy: ",
                                        style: TextStyle(
                                          color: ColorResource.yellow,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            "Feed Spinach or Green Roti to Cow, keep cardamom in your pocket & consume throughout the day & clean your house & Washroom on your own.",
                                        style: TextStyle(color: ColorResource.white),
                                      ),
                                    ],
                                  ),
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: MediaQuery.of(context).size.width * .4,
                        right: MediaQuery.of(context).size.width * .4,
                        child: Container(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: ColorResource.errorColor,
                            foregroundColor: ColorResource.white,
                            child: Image.asset("assets/images/goluLogo.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: width,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        width: width,
                        decoration: BoxDecoration(
                          color: ColorResource.darkPink,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(children: [
                          const SizedBox(height: 20),
                          Container(
                            width: width,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showCustomDialog(context);
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 20),
                                        width: width * .38,
                                        decoration: const BoxDecoration(
                                            color: ColorResource.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Text(
                                            "Know your \nCryptocurrency/Coin",
                                            style: TextStyle(
                                                color: ColorResource.darkBlue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 6.5,
                                          left: width * .33,
                                          child: Transform.rotate(
                                            angle: 0.785,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color:
                                                       ColorResource.darkBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: Center(
                                                  child: Transform.rotate(
                                                angle: -0.785,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: Image.asset(
                                                      "assets/icons/cryptocoins.png"),
                                                ),
                                              )),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showCustomDialog(context);
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                        width: width * .36,
                                        decoration: const BoxDecoration(
                                            color: ColorResource.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: Text(
                                            "Know your \nStocks /shares",
                                            style: TextStyle(
                                                color: ColorResource.darkBlue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 6.5,
                                          left: width * .32,
                                          child: Transform.rotate(
                                            angle: 0.785,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color:ColorResource.darkBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: Center(
                                                  child: Transform.rotate(
                                                angle: -0.785,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Image.asset(
                                                      "assets/icons/stocks.png"),
                                                ),
                                              )),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showCustomDialog(context);
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        margin: EdgeInsets.only(right: 20),
                                        width: width * .38,
                                        decoration: const BoxDecoration(
                                            color: ColorResource.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: Text(
                                          "Know your \nCompany/ Business",
                                          style: TextStyle(
                                              color: ColorResource.darkBlue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Positioned(
                                          top: 6.5,
                                          left: width * .33,
                                          child: Transform.rotate(
                                            angle: 0.785,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color:ColorResource.darkBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: Center(
                                                  child: Transform.rotate(
                                                angle: -0.785,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(7),
                                                  child: Image.asset(
                                                      "assets/icons/business.png"),
                                                ),
                                              )),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showCustomDialog(context);
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(17),
                                        margin: EdgeInsets.only(right: 20),
                                        width: width * .36,
                                        decoration: const BoxDecoration(
                                            color: ColorResource.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: Text(
                                          "Know yourself",
                                          style: TextStyle(
                                              color: ColorResource.darkBlue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Positioned(
                                          top: 6.5,
                                          left: width * .32,
                                          child: Transform.rotate(
                                            angle: 0.785,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color:ColorResource.darkBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: Center(
                                                  child: Transform.rotate(
                                                angle: -0.785,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(7),
                                                  child: Image.asset(
                                                      "assets/icons/yourself.png"),
                                                ),
                                              )),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showCustomDialog(context);
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(17),
                                        margin: EdgeInsets.only(right: 20),
                                        width: width * .36,
                                        decoration: const BoxDecoration(
                                            color: ColorResource.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: Text(
                                          "Name Calculator",
                                          style: TextStyle(
                                              color: ColorResource.darkBlue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Positioned(
                                          top: 6.5,
                                          left: width * .32,
                                          child: Transform.rotate(
                                            angle: 0.785,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color:ColorResource.darkBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: Center(
                                                  child: Transform.rotate(
                                                angle: -0.785,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: Image.asset(
                                                      "assets/icons/calculator.png"),
                                                ),
                                              )),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Positioned(
                        top: 0,
                        left: width * .1,
                        right: width * .1,
                        child: Container(
                          width: width * 0.7,
                          decoration: BoxDecoration(
                            color: ColorResource.darkPink,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: ColorResource.white,
                              width: 2,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Text(
                              "Rediscover through GOLUU APP",
                              style: TextStyle(
                                color: ColorResource.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * .4,
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: width * .5,
                        child: Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Reveal Master Numeroscope",
                                    style: TextStyle(
                                        color: ColorResource.darkPink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "  with ",
                                    style: TextStyle(
                                      color: ColorResource.darkBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Vastu & Astro Insights",
                                    style: TextStyle(
                                        color: ColorResource.darkPink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RoutesName.chat);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorResource.darkPink,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Unlock the Master Chart",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: ColorResource.white),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorResource.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset("assets/images/banner.png"),
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

class adDialog extends StatefulWidget {
  const adDialog({super.key});

  @override
  State<adDialog> createState() => _adDialogState();
}

class _adDialogState extends State<adDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentAdBox(context),
    );
  }

  Widget contentAdBox(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return Stack(
      children: [
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: ColorResource.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorResource.darkPink,
                    child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: ColorResource.white,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

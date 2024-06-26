import 'package:flutter/material.dart';
import 'package:goluu_app/utils/color.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: ColorResource.darkPink,
                width: width,
                height: height + MediaQuery.of(context).viewInsets.bottom,
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: width,
                          height: height * .4,
                          child: Image.asset(
                            "assets/images/forget.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height * .35),
                          width: width,
                          height: height * .6,
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                            color: ColorResource.darkPink,
                          ),
                          child: ListView(
                            children: [
                              SizedBox(
                                  height:
                                  MediaQuery.of(context).size.height * .1),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      color: ColorResource.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                style: const TextStyle(color: ColorResource.white),
                                decoration: const InputDecoration(
                                  hintText: "email",
                                  hintStyle:
                                  TextStyle(color: ColorResource.white),
                                  suffixIcon: Icon(
                                    Icons.email,
                                    color: ColorResource.white,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorResource.white,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: ColorResource.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                style: const TextStyle(color: ColorResource.white),
                                decoration: const InputDecoration(
                                  hintText: "password",
                                  hintStyle:
                                  TextStyle(color: ColorResource.white),
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    color: ColorResource.white,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorResource.white,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorResource.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                style:
                                const TextStyle(color: ColorResource.white),
                                decoration: const InputDecoration(
                                  hintText: "confirm password",
                                  hintStyle:
                                  TextStyle(color: ColorResource.white),
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    color: ColorResource.white,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorResource.white,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                      ColorResource.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * .5,
                                  height: 50,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorResource.darkBlue,
                                      ),
                                      child: const Text(
                                        "Reset Password",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic),
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ))));
  }
}
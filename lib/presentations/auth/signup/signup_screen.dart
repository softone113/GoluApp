import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:goluu_app/route/route_name.dart';
import 'package:goluu_app/utils/color.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool value = false;

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
                      "assets/images/register.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * .35),
                    padding: EdgeInsets.all(15),
                    width: width,
                    height: height * .6,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: ColorResource.darkPink,
                    ),
                    child: ListView(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Register for your ",
                                  style: TextStyle(
                                      color: ColorResource.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: "Goluu",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: ColorResource.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: " App",
                                  style: TextStyle(
                                      color: ColorResource.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Text(
                          "Select your Country",
                          style: TextStyle(color: ColorResource.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorResource.white, width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: CountryCodePicker(
                            onChanged: (CountryCode? country) {
                              setState(() {
                              });
                            },
                            backgroundColor: ColorResource.white,
                            hideSearch: true,
                            initialSelection: 'IN',
                            favorite: const ['+91', ' '],
                            showCountryOnly: true,
                            showOnlyCountryWhenClosed: true,
                            alignLeft: true,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: const TextStyle(color: ColorResource.white),
                          decoration: const InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(color: ColorResource.white),
                            suffixIcon: Icon(
                              Icons.person,
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
                            hintText: "Email",
                            hintStyle: TextStyle(color: ColorResource.white),
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
                            hintText: "Password",
                            hintStyle: TextStyle(color: ColorResource.white),
                            suffixIcon: Icon(
                              Icons.lock_outline,
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
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Checkbox(
                              focusColor: ColorResource.white,
                              autofocus: true,
                              value: this.value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                            const Text(
                              "by continuing, you agree to T&C Policy.",
                              style: TextStyle(color: ColorResource.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width * .5,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorResource.darkBlue,
                            ),
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, RoutesName.login);
                            },
                            child: const Text(
                              "Login here",
                              style: TextStyle(
                                  color: ColorResource.white,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        const Text(
                          "This app is encrypted with SSL Security",
                          style: TextStyle(
                            color: ColorResource.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

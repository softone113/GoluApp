import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    final mq=MediaQuery.of(context).size;
    final width=mq.width;
    final height=mq.height;
    
    return SafeArea(
        child: Scaffold(
        body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                width: width,
                height: height*.4,
                child: Image.asset("assets/images/register.jpg",fit: BoxFit.cover,),
              ),
              Container(
                margin: EdgeInsets.only(top: height*.35),
                width: width,
                height: height *.62,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Color(0xffD80D4A),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Center(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Register for your ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: "Goluu",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: " App",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Select your Country",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        readOnly: true,
                        onTap: () {
                         // _openCountryPickerDialog(context);
                        },
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                          // hintText: _selectedCountry?.name ?? 'Select Country',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white, // Change the color here
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white, // Change the color here
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white, // Change the color here
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white), // Change the color here
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          // Checkbox(
                          //   focusColor: Colors.white,
                          //   autofocus: true,
                          //   value: this.value,
                          //   onChanged: (value) {
                          //     setState(() {
                          //       this.value = value!;
                          //     });
                          //   },
                          // ),
                          Text(
                            "by continuing, you agree to T&C Policy.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                          width: MediaQuery.of(context).size.width * .5,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                Color(0xff281549), // Background color
                              ),
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic),
                              ))),
                      Center(
                          child: TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              "Login here",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          )),
                      Center(
                        child: Text(
                          "This app is encrypted with SSL Security",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ));
  }
}

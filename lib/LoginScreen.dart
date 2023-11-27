import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors.dart';
import 'package:food_delivery_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: const AssetImage(bgImage),
                  height: height * 0.35,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.37,
                  width: width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.3, 0.7],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                  //color: Colors.white.withOpacity(0.3),
                ),
                Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            text: appName + "\n",
                            children: [
                              TextSpan(
                                  text: slogan,
                                  style: TextStyle(color: Colors.grey,fontSize: 13))
                            ]),
                      ),
                    ))
              ],
            ),
            // ignore: prefer_const_constructors
            // Center(
            //   child: const Text(
            //     appName,
            //     style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            //   ),
            // ),
            // const Center(
            //   child: Text(slogan, style: TextStyle(color: Colors.grey)),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        stops: [0.1, 0.5],
                        colors: [primaryColor, Colors.transparent])),
                child: const Text(" $loginString",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: primaryColor),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open, color: primaryColor),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16)),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(forgetText),
                )),
            Center(
              child: SizedBox(
                height: height * 0.08,
                width: width - 30,
                child: FloatingActionButton(
                  backgroundColor: primaryColor.withOpacity(0.6),
                  hoverColor: primaryColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  onPressed: () {},
                  child: const Text("Login To Accout",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white,
                          letterSpacing: 0.5)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {}, child: const Text("Create Account"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

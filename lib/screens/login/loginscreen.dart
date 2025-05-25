import 'package:flutter/material.dart';
import 'package:instagram/screens/bottomnav/bottomnav.dart';
import 'package:instagram/screens/signup/signupscreen.dart';
import 'package:instagram/widgets/uihelper.dart';
// import 'package:flutter/scheduler.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imageURL: "insta2.png"),
            SizedBox(height: 20),
            Uihelper.customTextField(
              controller: emailcontroller,
              text: "Email",
              tohide: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            Uihelper.customTextField(
              controller: passwordcontroller,
              text: "Password",
              tohide: true,
              keyboardType: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Uihelper.customTextButton(
                    text: "Forget password?",
                    callback: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Uihelper.customButton(
              buttonText: "Log In",
              callback: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Bottomnav()),
                );
              },
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customImage(imageURL: 'fbicon.png'),
                Uihelper.customTextButton(
                  text: "Log in with Facebook",
                  callback: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("OR", style: TextStyle(fontSize: 14)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Uihelper.customTextButton(
                  text: "Sign up",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signupscreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

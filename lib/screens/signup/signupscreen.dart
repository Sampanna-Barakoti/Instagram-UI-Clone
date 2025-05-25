import 'package:flutter/material.dart';
import 'package:instagram/screens/login/loginscreen.dart';
import 'package:instagram/widgets/uihelper.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imageURL: "insta2.png"),
            SizedBox(height: 30),
            Uihelper.customTextField(
              controller: usercontroller,
              text: "Enter your Username",
              tohide: false,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            Uihelper.customTextField(
              controller: emailcontroller,
              text: "Enter your Email here",
              tohide: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            Uihelper.customTextField(
              controller: passwordcontroller,
              text: "Enter your password here",
              tohide: true,
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            Uihelper.customButton(buttonText: "Sign up", callback: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Uihelper.customTextButton(
                  text: "Login",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Loginscreen()),
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

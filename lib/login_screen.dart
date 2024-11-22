import 'package:flutter/material.dart';
import 'package:medicalapp/home_product_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset(
                  'assets/images/logo_info.png',
                  height: 400,
                  width: 450,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 1, 20, 0),
              child: Container(
                height: 50,
                width: 250,
                child: Text("Please Enter your Mobile Number to login/signup"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: numberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "phone number",
                  hintText: "03484635624",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeProductScreen()));
                      },
                      child: Text("CONTINUTE"),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

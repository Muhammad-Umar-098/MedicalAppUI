import 'package:flutter/material.dart';
import 'package:medicalapp/login_screen.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({super.key});

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/splash_image_1(1).png',
                height: 400,
                width: 450,
              ),
            ),
            Text(
              'View and buy',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Medicine Online',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Etiam mollis metus non purus",
              style: TextStyle(fontSize: 18),
            ),
            Text("faucibus sollicitudin.Pellentesque",
                style: TextStyle(fontSize: 18)),
            Text("sadittis mi.Integer.",
                style: TextStyle(
                  fontSize: 18,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      LoginScreen();
                    });
                  },
                  child: Text("Skip"),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const LoginScreen())));
                        },
                        child: Text("Next")),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

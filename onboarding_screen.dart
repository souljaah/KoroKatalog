import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 48),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.white), // 👈 white color
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset('lib/assets/1.png'),
                  SizedBox(height: 24),
                  Text("Welcome to KoroKatalog",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 12),
                  Text(
                    "Need something? We've got over 100,000 items you can borrow. Find what you need on KoroKatalog!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: currentIndex == index ? 24 : 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (currentIndex == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                } else {
                  setState(() => currentIndex++);
                }
              },
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white), // 👈 white text
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

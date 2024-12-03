import 'package:delivery_app/views/food_list_screen/food_list_screen.dart';
import 'package:delivery_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 216, 209, 1),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/img/pizza.png"),
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Text(
                    "Food Delivery",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                      height: 1,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "We help you to find best and\ndelicious food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      height: 1.4,
                      letterSpacing: -0.32,
                      color: Color.fromRGBO(103, 103, 103, 1),
                    ),
                  ),
                ],
              ),
            )),
            TextMainButton(
              text: 'GET STARTED',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FoodListScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

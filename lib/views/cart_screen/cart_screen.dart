import 'package:delivery_app/views/food_list_screen/food_list_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FoodListScreen()),
              );
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text('Order Details'),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 24,
          )),
          SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Container(
                height: 140,
                padding: const EdgeInsets.only(
                    top: 10, right: 10, left: 16, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        offset: Offset(0, 9),
                        blurRadius: 24.5),
                  ],
                ),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/img/meat_pizza.png"),
                      fit: BoxFit.contain,
                      height: 120,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 14,
                          ),
                          const Text(
                            "Meat Pizza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.32,
                              height: 1.1,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Mixed Pizza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.3,
                              height: 1.3,
                              color: Color.fromRGBO(174, 174, 174, 1),
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Expanded(
                                child: Text(
                                  "\$ 8.30",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.5,
                                    height: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: IconButton.filled(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove),
                                  padding: EdgeInsets.zero,
                                  iconSize: 30,
                                  color: Colors.white,
                                  style: IconButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(243, 123, 45, 1),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.5,
                                    height: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: IconButton.filled(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  padding: EdgeInsets.zero,
                                  iconSize: 30,
                                  color: Colors.white,
                                  style: IconButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(243, 123, 45, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 3,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(bottom: 90, top: 40, right: 20),
              child: const Text(
                "TOTAL: \$23.70",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Inter",
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(25),
            backgroundColor: const Color.fromRGBO(243, 123, 45, 0.9),
          ),
          child: const Text(
            "CHECKOUT",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              height: 1.1,
              letterSpacing: -0.32,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

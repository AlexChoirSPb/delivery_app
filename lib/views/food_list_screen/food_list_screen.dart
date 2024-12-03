import 'package:flutter/material.dart';

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 68,
            elevation: 0,
            snap: true,
            floating: true,
            pinned: true,
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello!",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 35,
                    height: 1,
                    letterSpacing: -0.32,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "What you want eat today?",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    height: 1,
                    letterSpacing: -0.32,
                    color: Color.fromRGBO(133, 133, 133, 1),
                  ),
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(55),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                height: 39,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          backgroundColor:
                              const Color.fromRGBO(243, 123, 45, 1),
                          elevation: 0),
                      child: const Text(
                        "Pizza",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          letterSpacing: -0.32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          backgroundColor:
                              const Color.fromRGBO(243, 123, 45, 1),
                          elevation: 0),
                      child: const Text(
                        "Pasta",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          letterSpacing: -0.32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          backgroundColor:
                              const Color.fromRGBO(243, 123, 45, 1),
                          elevation: 0),
                      child: const Text(
                        "Burger",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          letterSpacing: -0.32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          backgroundColor:
                              const Color.fromRGBO(243, 123, 45, 1),
                          elevation: 0),
                      child: const Text(
                        "Sushi",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          letterSpacing: -0.32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8, right: 10, left: 10, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              offset: Offset(0, 2),
                              blurRadius: 3),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Image(
                            image: AssetImage("assets/img/meat_pizza.png"),
                            fit: BoxFit.contain,
                            height: 150,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Meat Pizza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.5,
                              height: 1.5,
                            ),
                          ),
                          const Text(
                            "Mixed Pizza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              height: 1,
                              color: Color.fromRGBO(174, 174, 174, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "\$ 8.30",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.5,
                                  height: 1,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
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
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8, right: 10, left: 10, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              offset: Offset(0, 2),
                              blurRadius: 3),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Image(
                            image: AssetImage("assets/img/meat_pizza.png"),
                            fit: BoxFit.contain,
                            height: 150,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Meat Pizza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.5,
                              height: 1.5,
                            ),
                          ),
                          const Text(
                            "Mixed Pizza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              height: 1,
                              color: Color.fromRGBO(174, 174, 174, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "\$ 8.30",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.5,
                                  height: 1,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            itemCount: 6,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(243, 123, 45, 1),
        child: const Icon(
          Icons.shopping_cart,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

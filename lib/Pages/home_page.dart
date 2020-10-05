import 'package:flutter/material.dart';
import 'package:food_delivery_app/db/temoprary_data.dart';
import 'package:food_delivery_app/widgets/card.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Food App",
          style: TextStyle(
              color: Colors.red[400],
              fontSize: 28,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.green,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF8c2522),
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.orange,
        unselectedLabelStyle: TextStyle(color: Colors.blue),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Our Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile"),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's Eat ! \nOrder Your Food Now",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0x55d2d2d2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Here...",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10)),
                  )),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xFFfc6126),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
              ),
              // GridView.builder(
              //     itemCount: foodItems.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2
              //         ),
              //     itemBuilder: (context, index) {
              //       return FoodCard(
              //         foods: foodItems[index],
              //       );
              //     })
            ],
          )),
    );
  }
}

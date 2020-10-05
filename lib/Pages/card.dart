import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  String img, title;
  int price;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      img,
                      height: 100.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Flexible(
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${price}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.favorite),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}

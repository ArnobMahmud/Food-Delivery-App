import 'package:flutter/material.dart';
import 'package:food_delivery_app/Models/items.dart';

class FoodCard extends StatefulWidget {
  final Foods foods;
  const FoodCard({Key key, this.foods}) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
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
                      widget.foods.image,
                      height: 100.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Flexible(
                      child: Text( widget.foods.title,
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
                           "${widget.foods.price}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}

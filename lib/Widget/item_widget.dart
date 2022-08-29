import 'package:flutter/material.dart';
import 'package:shopigo/models/catalog_model.dart';

class ItemWidget extends StatelessWidget {
  final Products item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.black87),
        height: 150,
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
              child: Image.network(
                item.image,
                width: MediaQuery.of(context).size.width / 3,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color(0xff5bd407)),
                    ),
                    Text(
                      item.desc,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${item.price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Color(0xff5bd407)),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all(StadiumBorder())),
                            onPressed: () {},
                            child: Text("Add to cart",
                                style: TextStyle(fontSize: 11.0)))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

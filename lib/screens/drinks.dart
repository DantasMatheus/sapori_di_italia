import 'package:flutter/material.dart';
import 'package:saporidiitalia/cardapio.dart';
import 'package:saporidiitalia/components/drink_item.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});
  final List items = drinks;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return DrinkItem(
          imageURI: items[index]['image'],
          itemTitle: items[index]['name'],
          itemPrice: items[index]['price'],
        );
      },
      itemCount: items.length,
    );
  }
}

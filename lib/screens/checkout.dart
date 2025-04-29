import 'package:flutter/material.dart';
import 'package:saporidiitalia/cardapio.dart';
import 'package:saporidiitalia/components/order_item.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});
  final List items = pedido;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Pedido",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return OrderItem(
                imageURI: items[index]['image'],
                itemTitle: items[index]['name'],
                itemPrice: items[index]['price'],
              );
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}

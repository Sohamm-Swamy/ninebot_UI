import 'package:flutter/material.dart';
import 'package:ninebot/utils/styles.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('In Stock', style: p2),
          Text('NineBot GoKart Pro', style: h1),
          Row(
            children: [
              Text('USD ', style: p3),
              Text('1,999.99', style: p5),
            ],
          ),
        ],
      ),
    );
  }
}

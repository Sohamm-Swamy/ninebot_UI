import 'package:flutter/material.dart';
import 'package:ninebot/components/kart360.dart';
import 'package:ninebot/components/navigation.dart';
import 'package:ninebot/utils/styles.dart';

import 'product_details.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [bgLight, bgMedium],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: const Border(
          bottom: BorderSide(
            color: Colors.white12,
            width: 1,
          ),
        ),
      ),
      child: const Column(
        children: [
          Nav(),
          Kart360(),
          ProductInfo(),
        ],
      ),
    );
  }
}

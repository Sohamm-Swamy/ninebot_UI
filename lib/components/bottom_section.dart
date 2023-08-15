import 'package:flutter/material.dart';
import 'package:ninebot/components/card.dart';
import 'package:ninebot/models/card_model.dart';
import 'package:ninebot/utils/styles.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<BndCard> cards = [
      BndCard('assets/assets/images/card-1.png', 'Front Led Light', 89.99),
      BndCard(
          'assets/assets/images/card-2.png', 'AeroDynamic Rare Wing', 128.99),
      BndCard('assets/assets/images/card-3.png', 'Metal Pedals', 48.99),
      BndCard('assets/assets/images/card-4.png', 'Rear Wing', 99.99),
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Extra Bundle Included', style: h2),
          const SizedBox(height: 13),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: cards.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var card = cards[index];
                  return BundleCard(
                      image: card.image, name: card.name, price: card.price);
                }),
          ),
        ],
      ),
    );
  }
}

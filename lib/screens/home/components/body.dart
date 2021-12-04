import 'package:app/constants.dart';
import 'package:app/models/products.dart';
import 'package:app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppDefaultPaddng * 1.1),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDefaultPaddng),
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: AppDefaultPaddng,
                      crossAxisSpacing: AppDefaultPaddng,
                      crossAxisCount: 2,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) => ItemCard(product: products[index], press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index]),),),),
            ))
        )],
    );
  }
}


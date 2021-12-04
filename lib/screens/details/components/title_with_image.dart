import 'package:app/models/products.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithImage extends StatelessWidget {
  const TitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppDefaultPaddng),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: AppDefaultPaddng,),
          Row(
            children: <Widget>[
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(text: "\$${product.price}", style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),

                ],
              ),),
              SizedBox(width: AppDefaultPaddng,),
              Container(
                
                child: Image.asset(product.image, fit: BoxFit.fill,)),
            ],
          ),
        ],
      ),
    );
  }
}

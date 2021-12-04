import 'package:app/models/products.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDefaultPaddng),
      child: Text(product.description, style: TextStyle(height: 1.5), maxLines: 4, overflow: TextOverflow.ellipsis,

      ),
    );
  }
}

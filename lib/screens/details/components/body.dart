import 'package:app/constants.dart';
import 'package:app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';
import 'title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height - Scaffold.of(context).appBarMaxHeight!.toInt(),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: AppDefaultPaddng,
                    right: AppDefaultPaddng),
                margin: EdgeInsets.only(top: size.height * 0.3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    Description(product: product),
                    CounterWithFavButton(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppDefaultPaddng),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: AppDefaultPaddng),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: product.color)
                            ),
                            child: IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/icons/add_to_cart.svg", color: product.color,)),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: TextButton(
                                child: Text("Buy Now".toUpperCase(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: product.color,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
              TitleWithImage(product: product),
            ],
          ),
        )
      ],
    ));
  }
}





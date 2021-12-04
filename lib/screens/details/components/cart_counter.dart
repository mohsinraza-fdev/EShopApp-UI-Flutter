import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({ Key? key }) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int noOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        OutlineButtonBuild(Icons.remove,() {
          if (noOfItems > 1) {
            setState(() {
              noOfItems -- ;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaultPaddng / 2),
          child: Text(noOfItems.toString().padLeft(2, "0"), style: Theme.of(context).textTheme.headline6,),
        ),
        OutlineButtonBuild(Icons.add, () {
          setState(() {
            noOfItems ++ ;
          });
        })
      ],      
    );
  }

  SizedBox OutlineButtonBuild(IconData icon, press) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          onPressed: press,
          child: Icon(icon),
          style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)), padding: EdgeInsets.zero),
        ),
      );
  }
}


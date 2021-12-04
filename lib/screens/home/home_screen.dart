import 'package:app/constants.dart';
import 'package:app/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Body(),
    );
  }

  AppBar AppBarWidget() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, size: 30,),
        onPressed: () {},
        color: AppTextColor,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, size: 30,),
          onPressed: () {},
          color: AppTextColor,
        ),
        IconButton(
          icon: Icon(Icons.shopping_basket, size: 30,),
          onPressed: () {},
          color: AppTextColor,
        ),
        SizedBox(
          width: AppDefaultPaddng / 1.8,
        ),
      ],
    );
  }
}

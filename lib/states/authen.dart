import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constand.dart';
import 'package:shoppingmall/widgets/show_image.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            buildimage(size),
            buildAppName()
          ],
        ),
      ),
    );
  }

  Row buildAppName() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Showtitle(title: MyConstant.appName, textStyle: MyConstant().h1Style()),
            ],
          );
  }

  Row buildimage(double size) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: size*0.6,
            child: ShowImage(path: MyConstant.image1),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoppingmall/widgets/show_title.dart';

import '../utility/my_constand.dart';

class ShowSignOut extends StatelessWidget {
  const ShowSignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ListTile(
          onTap: () async {
            SharedPreferences preferences =
                await SharedPreferences.getInstance();
            preferences.clear().then((value) => Navigator.pushNamedAndRemoveUntil(
                context, MyConstant.routeAuthen, (route) => false));
          },
          tileColor: MyConstant.primary,
          leading: Icon(
            Icons.exit_to_app,
            size: 35,
            color: Colors.white,
          ),
          title: Showtitle(
            title: 'Sign Out',
            textStyle: MyConstant().h2whiteStyle(),
          ),
          subtitle: Showtitle(
            title: 'Sign Out and Back to Login',
            textStyle: MyConstant().h3whiteStyle(),
          ),
        ),
      ],
    );
  }
}
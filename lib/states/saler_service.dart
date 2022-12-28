import 'package:flutter/material.dart';
import 'package:shoppingmall/bodys/shop_manage_saler.dart';
import 'package:shoppingmall/bodys/show_order_saler.dart';
import 'package:shoppingmall/bodys/show_product_saler.dart';
import 'package:shoppingmall/widgets/show_title.dart';

import '../utility/my_constand.dart';
import '../widgets/show_signout.dart';

class SalerService extends StatefulWidget {
  const SalerService({super.key});

  @override
  State<SalerService> createState() => _SalerServiceState();
}

class _SalerServiceState extends State<SalerService> {
  List<Widget> widgets = [
    ShowOrderSaler(),
    ShopManageSaler(),
    ShowProductSaler()
  ];
  int indexWidget = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primary,
        title: Text('Saler'),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            ShowSignOut(),
            Column(
              children: [
                UserAccountsDrawerHeader(accountName: null, accountEmail: null),
                menuShowOrder(),
                menuShopManage(),
                menuShowProduct(),
              ],
            ),
          ],
        ),
      ),
      body: widgets[indexWidget],
    );
  }

  ListTile menuShowOrder() {
    return ListTile(
      onTap: () {
        setState(() {
          indexWidget = 0;
          Navigator.pop(context);
        });
      },
      leading: Icon(Icons.filter_1),
      title: Showtitle(
        title: 'Show Order',
        textStyle: MyConstant().h2Style(),
      ),
      subtitle: Showtitle(
        title: 'แสดงรายละเอียดของ Order ที่สั่ง',
        textStyle: MyConstant().h3Style(),
      ),
    );
  }

  ListTile menuShopManage() {
    return ListTile(
      onTap: () {
        setState(() {
          indexWidget = 1;
          Navigator.pop(context);
        });
      },
      leading: Icon(Icons.filter_2),
      title: Showtitle(
        title: 'Shop Manage',
        textStyle: MyConstant().h2Style(),
      ),
      subtitle: Showtitle(
        title: 'แสดงรายละเอียดของหน้าร้าน',
        textStyle: MyConstant().h3Style(),
      ),
    );
  }

  ListTile menuShowProduct() {
    return ListTile(
      onTap: () {
        setState(() {
          indexWidget = 2;
          Navigator.pop(context);
        });
      },
      leading: Icon(Icons.filter_3),
      title: Showtitle(
        title: 'Show Product',
        textStyle: MyConstant().h2Style(),
      ),
      subtitle: Showtitle(
        title: 'แสดงรายละเอียดของสินค้า',
        textStyle: MyConstant().h3Style(),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market/components/constants/mediaquares.dart';
import 'package:uzum_market/data/models/product_model.dart';
import 'package:uzum_market/pages/home/tab/tabs/widgets/cart_item.dart';

class ShoppingBasketPage extends StatefulWidget {
  const ShoppingBasketPage({Key? key}) : super(key: key);

  @override
  State<ShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<ShoppingBasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          height: m_h(context).toDouble(),
          width: m_w(context).toDouble(),
          child: Column(
            children: [
              productInBasket_widget(product: Product(id: 1, title: "Nimai", price: 12000, description: "description", category: "category", image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))
            ],
          ),
        ),
      ),
    );
  }
}

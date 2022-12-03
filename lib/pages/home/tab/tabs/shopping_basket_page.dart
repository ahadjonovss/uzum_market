import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market/components/constants/mediaquares.dart';
import 'package:uzum_market/data/models/product_model.dart';
import 'package:uzum_market/data/repositories/App_repository.dart';
import 'package:uzum_market/pages/home/tab/tabs/widgets/cart_item.dart';

class ShoppingBasketPage extends StatefulWidget {
  List myCart;
  ShoppingBasketPage({required this.myCart, Key? key}) : super(key: key);

  @override
  State<ShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<ShoppingBasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          height: m_h(context).toDouble(),
          width: m_w(context).toDouble(),
          child: ListView.builder(
            itemCount: AppRepository.meningSavatim.length,
            itemBuilder: (context, index) => productInBasket_widget(
              product: AppRepository.meningSavatim[index],
              ondeleted: () {
                AppRepository.deleteProduct(AppRepository.meningSavatim[index]);
                setState(() {

                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

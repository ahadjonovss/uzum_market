import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market/data/repositories/App_repository.dart';

import '../../../../../components/constants/mediaquares.dart';
import '../../../../../data/models/product_model.dart';

class ProductWidget extends StatefulWidget {
  List myCart;
  Product product;
  ProductWidget({required this.myCart, required this.product, Key? key})
      : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: m_w(context) * 0.8.toDouble(),
      width: m_w(context) * 0.47,
      child: Column(
        children: [
          Container(
            width: m_w(context) * 0.47,
            height: m_w(context) * 0.522,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.product.image),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(
            height: 4,
          ), //rasm
          Text(
            widget.product.title,
            maxLines: 2,
          ),
          const SizedBox(
            height: 29,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(widget.product.price.toString()),
                  Text(widget.product.price.toString()),
                ],
              ),
              InkWell(
                onTap: () {
                  AppRepository.insertToCart(widget.product);
                  AnimatedSnackBar(
                          builder: ((context) {
                            return Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              height: 40,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${widget.product.title.substring(0, 10)} is added to Cart",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            );
                          }),
                          duration: const Duration(seconds: 4),
                          snackBarStrategy: const ColumnSnackBarStrategy())
                      .show(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: const Center(
                    child: Icon(Icons.add_shopping_cart),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

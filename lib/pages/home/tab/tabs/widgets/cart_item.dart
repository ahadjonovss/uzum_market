

import 'package:flutter/material.dart';
import 'package:uzum_market/pages/home/tab/tabs/widgets/widgets.dart';

import '../../../../../data/models/product_model.dart';

class productInBasket_widget extends StatefulWidget {
  VoidCallback ondeleted;
  Product product;
  productInBasket_widget({required this.ondeleted,required this.product,Key? key}) : super(key: key);

  @override
  State<productInBasket_widget> createState() => _productInBasket_widgetState();
}

class _productInBasket_widgetState extends State<productInBasket_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
      height: 130,
      width: 320,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.product.image)
                )
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              text(widget.product.title.substring(0,18),
                  clr: Colors.black,
                  fontweight: FontWeight.w600
              ),
              sized(h: 8),
              text("\$ ${widget.product.price.toDouble()}",fontweight: FontWeight.w600),
              sized(h: 8),
              InkWell(
                  onTap: widget.ondeleted,
                  child: text("Delete",fontweight: FontWeight.w600,clr: Colors.red))
            ],
          )

        ],
      ),
    );
  }
}
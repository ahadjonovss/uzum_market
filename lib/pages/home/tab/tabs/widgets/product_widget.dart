import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../components/constants/mediaquares.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: m_w(context)*0.8.toDouble(),
      width: m_w(context)*0.47,
      child: Column(
        children: [
          Container(
            width: m_w(context)*0.47,
            height: m_w(context)*0.522,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/300?random=1"),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(8)

            ),
          ),
          const SizedBox(height: 4,),//rasm
          const Text("Grechka Mistral Yadrica , 900 g"),
          const SizedBox(height: 29,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text("12.000"),
                  Text("12.000"),
                ],
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                ),
                child: const Center(
                  child: Icon(Icons.add_shopping_cart),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market/components/constants/image.dart';
import 'package:uzum_market/components/constants/mediaquares.dart';
import 'package:uzum_market/pages/home/tab/tabs/account_page.dart';
import 'package:uzum_market/pages/home/tab/tabs/favs_page.dart';
import 'package:uzum_market/pages/home/tab/tabs/home_page.dart';
import 'package:uzum_market/pages/home/tab/tabs/search_page.dart';
import 'package:uzum_market/pages/home/tab/tabs/shopping_basket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    List pages=[
      HomePage(),
      SearchPage(),
      ShoppingBasketPage(),
      FavouritesPage(),
      AccountPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: currentPage!=0?Text("Savat",style: TextStyle(color: Colors.black),):Text(""),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          currentPage==0?Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              height: m_w(context)*0.08,
              width: m_w(context)*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withOpacity(0.3)
              ),
              child: Row(
                children: [
                  const Center(child: Icon(Icons.search,color: Colors.grey,)),
                  Container(
                    padding: const EdgeInsets.only(top: 4),
                    height:60,
                    width: m_w(context)*0.8,
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Mahsulot va toifalarni qidirish",
                            border: InputBorder.none
                        ),

                      ),
                    ),
                  )
                ],
              ),
            ),
          ):Container()
        ],
        
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value){
          setState(() {
            currentPage=value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Bosh sahifa"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Qidiruv"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "Savat"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: "Istaklar"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Kabinet"),
        ],
      ),
    );
  }
}

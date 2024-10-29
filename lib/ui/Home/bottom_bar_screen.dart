import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndex=2;
  List screen=const [
    Scaffold(),
    // Favorite(),
    // HomeScreen(),
    // CartScreen(),
    // Profile(),
  ];



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          currentIndex==2;
        });
      },
      shape: CircleBorder(),
      backgroundColor: kprimaryColor,child: Icon(Icons.home,color: Colors.white,size: 35,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              setState(() {
                currentIndex==0;
              });
            },
                icon: Icon(Icons.grid_view_outlined,
                  size: 25,color:currentIndex==0 ? kprimaryColor:Colors.grey.shade400 ,)
            ),
            IconButton(onPressed: (){
              setState(() {
                currentIndex==1;
              });
            },
                icon: Icon(Icons.favorite_border,
                  size: 25,color:currentIndex==1 ? kprimaryColor:Colors.grey.shade400 ,)
            ),
            IconButton(onPressed: (){
              setState(() {
                currentIndex==3;
              });
            },
                icon: Icon(Icons.shopping_cart_checkout,
                  size: 25,color:currentIndex==3 ? kprimaryColor:Colors.grey.shade400 ,)
            ),
            IconButton(onPressed: (){
              setState(() {
                currentIndex==4;
              });
            },
                icon: Icon(Icons.person,
                  size: 25,color:currentIndex==4 ? kprimaryColor:Colors.grey.shade400 ,)
            )
          ],

        ),
      ),
      body: screen[currentIndex],

    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/core/utils/image.dart';
import 'package:tech_accessories_app/provider/bottomNavBar_provider.dart';
import 'package:tech_accessories_app/views/cart/cart_screen.dart';
import 'package:tech_accessories_app/views/home_view.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List screen = [
    HomeScreen(),
    Text('cart'),
    Text('Explore'),
    Text('more'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomnavbarProvider>(
        builder: (context, value, child) {
          switch (value.currentIndex) {
            case 0:
              return HomeScreen();
            case 1:
              return CartScreen();
            case 2:
              return Center(child: Text('Lock Screen'));
            case 3:
              return Center(child: Text('Line Screen'));
            default:
              return HomeScreen();
          }
        },
      ),
      bottomNavigationBar: Consumer<BottomnavbarProvider>(
        builder: (context, provider, child) {
          return Container(
            margin: EdgeInsets.only(bottom: 3.h, left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.85),
                  Colors.black,
                  Colors.black.withOpacity(0.7),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
                stops: const [0.5, 1.0, 0.5],
                tileMode: TileMode.clamp,
              ),
            ),
            height: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildItem(homeIcon, 0, provider),
                buildItem(cartIcon, 1, provider),
                buildItem(lockIcon, 2, provider),
                buildItem(linesIcon, 3, provider),
              ],
            ),
          );
        },
      ),
    );
  }

  IconButton buildItem(String icon, int index, BottomnavbarProvider provider) {
    bool isSelected = provider.currentIndex == index;
    return IconButton(
      onPressed: () {
        provider.changScreen(index);
      },
      icon: SvgPicture.asset(
        icon,
        color: isSelected ? Colors.white : Colors.grey[700],
        height: 3.3.h,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/provider/bottomNavBar_provider.dart';

import 'package:tech_accessories_app/components/nottom_nav_bar.dart';
import 'package:tech_accessories_app/provider/cart_provider.dart';
import 'package:tech_accessories_app/provider/explore_provider.dart';
import 'package:tech_accessories_app/provider/product_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType)=>MultiProvider(providers: [
        ChangeNotifierProvider(create: (_)=>BottomnavbarProvider(),
        
        ),
        ChangeNotifierProvider(create: (_)=>ProductProvider(),
        
        ),
        ChangeNotifierProvider(create: (_)=>CartProvider(),
        
        ),
        ChangeNotifierProvider(create: (_)=>ExploreProvider(),
        
        ),
      ],
      child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tech Accessories App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home:BottomNavBar(),
        ),
      )
    );
  }
}


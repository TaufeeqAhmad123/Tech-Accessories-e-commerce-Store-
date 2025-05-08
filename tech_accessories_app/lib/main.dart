import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/provider/bottomNavBar_provider.dart';

import 'package:tech_accessories_app/widget/nottom_nav_bar.dart';

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
        ChangeNotifierProvider(create: (_)=>BottomnavbarProvider())
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

